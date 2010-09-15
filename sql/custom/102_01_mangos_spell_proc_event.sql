DELETE FROM spell_proc_event WHERE entry IN (54639, 49467, 49208);
INSERT INTO spell_proc_event (entry, SchoolMask, SpellFamilyName, SpellFamilyMaskA0, SpellFamilyMaskA1, SpellFamilyMaskA2, SpellFamilyMaskB0, SpellFamilyMaskB1, SpellFamilyMaskB2, SpellFamilyMaskC0, SpellFamilyMaskC1, SpellFamilyMaskC2, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
/* Death Rune Mastery*/
(49467, 0, 15, 16, 0, 0, 131072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
/* Blood of the North*/
(54639, 0, 15, 4194304, 0, 0, 65536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
/* Reaping */
(49208, 0, 15, 4194304, 0, 0, 65536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
