/*
 * Copyright (C) 2005-2010 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "PossessedSummon.h"
#include "ObjectAccessor.h"

PossessedSummon::PossessedSummon():
m_oldCharm(0), Creature(CREATURE_SUBTYPE_POSSESSED_SUMMON)
{
}

void PossessedSummon::Update( uint32 diff )
{
    Unit* owner = GetOwner();

    // unsummon if summon ist corpse (or already dead), or if owner is lost
    if ( m_deathState == CORPSE || m_deathState == DEAD || !owner)
    {
        UnSummon();
        return;
    }

    // note: Spells summoning PossessedSummons always have at least one aura.
    // The exsistence of this summon is bound to this aura.
    if (!owner->HasAura(GetUInt32Value(UNIT_CREATED_BY_SPELL)))
    {
        UnSummon();
        return;
    }

    Creature::Update(diff);
}

void PossessedSummon::Summon(Player* owner, uint32 spellId)
{
    GetMap()->Add((Creature*)this);

    SetCreatorGUID(owner->GetGUID());
    SetOwnerGUID(owner->GetGUID());
    SetCharmerGUID(owner->GetGUID());

    setFaction(owner->getFaction());

    addUnitState(UNIT_STAT_CONTROLLED);
    SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PLAYER_CONTROLLED);

    // those creatures are alway bound to a spellId (see PossessedSummon::Update)
    SetUInt32Value(UNIT_CREATED_BY_SPELL, spellId);


    Camera& camera = owner->GetCamera();

    // store old charm (maybe it in fact should not be possible, to have a charmed pet
    // and a PossesedSummon!?)
    m_oldCharm = owner->GetCharmGUID();
    owner->SetCharm(this);

    camera.SetView(this);
    owner->SetClientControl(this, 1);
    owner->SetMover(this);

    if(CharmInfo *charmInfo = InitCharmInfo(this))
    {
        charmInfo->InitPossessCreateSpells();
        charmInfo->SetReactState(REACT_PASSIVE);
        charmInfo->SetCommandState(COMMAND_STAY);
    }

    owner->PossessSpellInitialize();

    // this will initialize PetAI, a bit oversized for this kind of creature,
    // but at least we get the team update by this AI
    AIM_Initialize();
}

void PossessedSummon::UnSummon()
{
    CombatStop();

    if (Unit* uOwner = GetOwner())
    {
        ASSERT(uOwner->GetTypeId() == TYPEID_PLAYER);

        Player* pOwner = (Player*)uOwner;
        Camera& camera = pOwner->GetCamera();

        // cancel aura
        pOwner->RemoveAurasDueToSpellByCancel(GetUInt32Value(UNIT_CREATED_BY_SPELL));
        pOwner->InterruptSpell(CURRENT_CHANNELED_SPELL);                                // TODO: this should generally be done at the aura system

        pOwner->SetCharm(NULL);

        // restore pet
        if (pOwner->GetPet())
            pOwner->PetSpellInitialize();
        // or old charm
        else if (Unit* oldCharm = ObjectAccessor::GetUnit(*pOwner, m_oldCharm))
        {
            pOwner->SetCharm(oldCharm);
            pOwner->CharmSpellInitialize();
        }
        else
            pOwner->RemovePetActionBar();

        camera.ResetView();
        pOwner->SetClientControl(this, 0);
        pOwner->SetMover(NULL);

        // just for good manner
        /* clearUnitState(UNIT_STAT_CONTROLLED);
        CombatStop(true);
        RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PLAYER_CONTROLLED);
        SetCharmerGUID(0); */
    }

    AddObjectToRemoveList();
}

void PossessedSummon::SaveToDB()
{
}
