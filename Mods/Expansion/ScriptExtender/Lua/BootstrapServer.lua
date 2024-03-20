--[[Ext.Require("EXP_SharedBootstrap.lua")

local function EXP_ResetStats()
        Ext.Stats.LoadStatsFile("Public/Expansion/Stats/Generated/Data/Interrupt_Expansion.txt", false)
        Ext.Stats.LoadStatsFile("Public/Expansion/Stats/Generated/Data/Passive_Expansion.txt", false)
        Ext.Stats.LoadStatsFile("Public/Expansion/Stats/Generated/Data/Spells_Expansion.txt", false)
        Ext.Stats.LoadStatsFile("Public/Expansion/Stats/Generated/Data/Status_BOOST_Expansion.txt", false)
end

Ext.Events.ResetCompleted:Subscribe(EXP_ResetStats)--]]

function DelayedCall(delayInMs, func)
    local startTime = Ext.Utils.MonotonicTime()
    local handlerId;
    handlerId = Ext.Events.Tick:Subscribe(function()
        local endTime = Ext.Utils.MonotonicTime()
        if (endTime - startTime > delayInMs) then
            Ext.Events.Tick:Unsubscribe(handlerId)
            func()
        end
    end) 
end

-- Bladesong Restoration
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, _, _)
	if (status == "TUT_RESTORATION" or status == "ALCH_POTION_REST_SLEEP_GREATER_RESTORATION") and HasPassive(character,"Bladesong_Resource") == 1 then
		Osi.ApplyStatus(character,"BLADESONG_RESOURCE_RESTORE",6.0,0)
	end
end)

-- Tireless THP
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, _, _)
	if status == "DEFT_EXPLORER_TIRELESS_TEMPHP" then
		local wis = Osi.GetAbility(character,"Wisdom")
		local result = wis + Random(8)
		local thpstatus = "DEFT_EXPLORER_TIRELESS_TEMPHP_" .. result
		Osi.RemoveStatus(character,"DEFT_EXPLORER_TIRELESS_TEMPHP")
		Osi.ApplyStatus(character,thpstatus,-1.0,0,character)
	end
end)

-- Versatile Trickster
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
	if status == "MAGEHAND_REST" and Osi.HasPassive(causee,"VersatileTrickster") == 1 then
	local verstatus = Ext.Stats.Get(status)
		Osi.ApplyStatus(character,"VERSATILE_TRICKSTER_AURA",-1.0,0,causee)
	end

	if status == "VERSATILE_TRICKSTER_TECHNICAL" then
		Osi.UseSpell(character, "Target_Distract_MageHand", causee)
	end
end)

local cleansingTouchStatuses = {
  "CHILL_TOUCH",
  "FRIENDS",
  "RAY_OF_FROST",
  "SHOCKING_GRASP",
  "VICIOUSMOCKERY",
  "ARMS_OF_HADAR",
  "COLOR_SPRAY",
  "COMMAND_APPROACH",
  "COMMAND_HALT",
  "COMMAND_FLEE",
  "COMMAND_GROVEL",
  "COMPELLED_DUEL",
  "ENSNARING_STRIKE",
  "FAERIE_FIRE",
  "HEX_STRENGTH",
  "HEX_DEXTERITY",
  "HEX_CONSTITUTION",
  "HEX_INTELLIGENCE",
  "HEX_WISDOM",
  "HEX_CHARISMA",
  "HUNTERS_MARK",
  "SEARING_SMITE",
  "SLEEP",
  "HIDEOUS_LAUGHTER",
  "WITCH_BOLT",
  "BLINDNESS",
  "BRANDING_SMITE",
  "CROWN_OF_MADNESS",
  "ENTHRALL",
  "HEAT_METAL",
  "HOLD_PERSON",
  "ACID_ARROW",
  "ACID_ARROW_3",
  "ACID_ARROW_4",
  "ACID_ARROW_5",
  "ACID_ARROW_6",
  "ACID_ARROW_7",
  "ACID_ARROW_8",
  "ACID_ARROW_9",
  "BLINDNESS",
  "PHANTASMAL_FORCE",
  "RAY_OF_ENFEEBLEMENT",
  "CURSE_ABILITY_CHARISMA",
  "CURSE_ABILITY_CONSTITUTION",
  "CURSE_ABILITY_DEXTERITY",
  "CURSE_ABILITY_INTELLIGENCE",
  "CURSE_ABILITY_STRENGTH",
  "CURSE_ABILITY_WISDOM",
  "CURSE_ATTACK",
  "CURSE_EXTRA_DAMAGE",
  "CURSE_SKIP_TURN",
  "FEAR",
  "HYPNOTIC_PATTERN",
  "SLOW",
  "BANISHED",
  "CONFUSION",
  "DOMINATE_BEAST",
  "PHANTASMAL_KILLER",
  "POLYMORPH_SHEEP",
  "BANISHING_SMITE",
  "CONTAGION_SLIMY_DOOM",
  "CONTAGION_SLIMY_DOOM_1",
  "CONTAGION_SLIMY_DOOM_2",
  "CONTAGION_SLIMY_DOOM_3",
  "CONTAGION_FILTH_FEVER",
  "CONTAGION_FILTH_FEVER_1",
  "CONTAGION_FILTH_FEVER_2",
  "CONTAGION_FILTH_FEVER_3",
  "CONTAGION_BLINDING_SICKNESS",
  "CONTAGION_BLINDING_SICKNESS_1",
  "CONTAGION_BLINDING_SICKNESS_2",
  "CONTAGION_BLINDING_SICKNESS_3",
  "CONTAGION_FLESH_ROT",
  "CONTAGION_FLESH_ROT_1",
  "CONTAGION_FLESH_ROT_2",
  "CONTAGION_FLESH_ROT_3",
  "CONTAGION_MINDFIRE",
  "CONTAGION_MINDFIRE_1",
  "CONTAGION_MINDFIRE_2",
  "CONTAGION_MINDFIRE_3",
  "CONTAGION_SEIZURE",
  "CONTAGION_SEIZURE_1",
  "CONTAGION_SEIZURE_2",
  "CONTAGION_SEIZURE_3",
  "HOLD_MONSTER",
  "SLEEPING_EYEBITE",
  "EYEBITE_PANICKED",
  "EYEBITE_SICKENED",
  "FLESH_TO_STONE_1",
  "FLESH_TO_STONE_2",
  "FLESH_TO_STONE_3",
  "PETRIFIED",
  "HARM",
  "IRRESISTIBLE_DANCE",
  "SUNBEAM",
  "LOW_DEVILSFEE_WEALTH",
  "STAGGERING_SMITE",
  "WYR_GORTASH_CHAINSOFTYRANNY",
  "CAUSE_FEAR",
  "CAUSTIC_BREW",
  "CAUSTIC_BREW_2",
  "CAUSTIC_BREW_3",
  "CAUSTIC_BREW_4",
  "CAUSTIC_BREW_5",
  "CAUSTIC_BREW_6",
  "CAUSTIC_BREW_7",
  "CAUSTIC_BREW_8",
  "CAUSTIC_BREW_9",
  "SNARE_RESTRAINED",
  "MAXIMILIANS_EARTHEN_GRASP",
  "MIND_SPIKE",
  "SUGGESTION",
  "MIND_WHIP",
  "MIND_WHIP_MOVEMENT",
  "MIND_WHIP_MOVEMENT_BLOCK",
  "ENEMIES_ABOUND",
  "RAULOTHIMS_PSYCHIC_LANCE",
  "BLINDING_SMITE_BLINDED",
  "CHARMED", --Animal Friendship, Charm Person
  "DISARM", -- Command Drop
  "FRIGHTENED", -- Dissonant Whispers, Wrathful Smite
  "POISONED", -- Ray of Sickness
  "OFF_BALANCED" -- Gust of Wind
}

-- Cleansing Touch
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
	if status == "CLEANSING_TOUCH" then
		for _, cstatus in pairs(cleansingTouchStatuses) do
			for _, esvStatus in pairs(Ext.Entity.Get(character).ServerCharacter.StatusManager.Statuses) do
				if Osi.HasActiveStatus(character,cstatus) == 1 and cstatus == esvStatus.StatusId and Osi.SpellHasSpellFlag(esvStatus.SourceSpell.Prototype, "IsSpell") == 1 then
					Osi.RemoveStatus(character,cstatus)
				end
			end
		end
	end
end)

-- Share Spells Setup
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
	if (status == "RANGERS_COMPANION_BEAR" or status == "RANGERS_COMPANION_BOAR" or status == "RANGERS_COMPANION_GIANTSPIDER" or status == "RANGERS_COMPANION_RAVEN" or status == "RANGERS_COMPANION_WOLF") and Osi.HasPassive(causee,"ShareSpells") == 1 then
		Osi.SetVarObject(causee,"ShareSpells",character)
	end
end)

local shareSpells = {
  Target_CureWounds = "CURE_WOUNDS_SHARE_SPELLS",
  Target_CureWounds_2 = "CURE_WOUNDS_2_SHARE_SPELLS",
  Target_CureWounds_3 = "CURE_WOUNDS_3_SHARE_SPELLS",
  Target_CureWounds_4 = "CURE_WOUNDS_4_SHARE_SPELLS",
  Target_CureWounds_5 = "CURE_WOUNDS_5_SHARE_SPELLS",
  Target_LesserRestoration = "LESSER_RESTORATION_SHARE_SPELLS",
  Target_LesserRestoration_3 = "LESSER_RESTORATION_SHARE_SPELLS",
  Target_LesserRestoration_4 = "LESSER_RESTORATION_SHARE_SPELLS",
  Target_LesserRestoration_5 = "LESSER_RESTORATION_SHARE_SPELLS",
  Target_GreaterRestoration = "GREATER_RESTORATION_SHARE_SPELLS",
  Target_HealingWord = "HEALING_WORD_SHARE_SPELLS",
  Target_HealingWord_2 = "HEALING_WORD_2_SHARE_SPELLS",
  Target_HealingWord_3 = "HEALING_WORD_3_SHARE_SPELLS",
  Target_HealingWord_4 = "HEALING_WORD_4_SHARE_SPELLS",
  Target_HealingWord_5 = "HEALING_WORD_5_SHARE_SPELLS",
  Shout_HealingWord_Mass = "HEALING_WORD_MASS_SHARE_SPELLS",
  Shout_HealingWord_Mass_4 = "HEALING_WORD_MASS_4_SHARE_SPELLS",
  Shout_HealingWord_Mass_5 = "HEALING_WORD_MASS_5_SHARE_SPELLS",
  Target_CureWounds_Mass = "CURE_WOUNDS_MASS_SHARE_SPELLS",
  Shout_PrayerOfHealing = "PRAYER_OF_HEALING_SHARE_SPELLS",
  Shout_PrayerOfHealing_3 = "PRAYER_OF_HEALING_3_SHARE_SPELLS",
  Shout_PrayerOfHealing_4 = "PRAYER_OF_HEALING_4_SHARE_SPELLS",
  Shout_PrayerOfHealing_5 = "PRAYER_OF_HEALING_5_SHARE_SPELLS"
}

-- Share Spells Casting
Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "after", function (caster, target, spellname, _, _, _)
	local summon = Osi.GetVarObject(caster,"ShareSpells")
	for spell, sharestatus in pairs(shareSpells) do
		if spell == spellname and caster == target and Osi.HasPassive(caster,"ShareSpells") == 1 and Osi.HasActiveStatus(summon,"SHARE_SPELLS") == 1 then
			Osi.ApplyStatus(summon,sharestatus,0.0,1,caster)
        end
    end
end)

-- Share Spells Status Apply
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
	if string.sub(character,-36) == causee and Osi.HasPassive(character,"ShareSpells") == 1 then
		for _, statusChar in pairs(Ext.Entity.Get(character).ServerCharacter.StatusManager.Statuses) do
			local summon = Osi.GetVarObject(character,"ShareSpells")
			local turns = Osi.GetStatusTurns(character,status)
			if statusChar.SourceSpell.Prototype ~= nil and statusChar.SourceSpell.Prototype ~= "" and statusChar.StatusId == status and status ~= "FAERIE_FIRE" and Osi.SpellHasSpellFlag(statusChar.SourceSpell.Prototype, "IsSpell") == 1 and Osi.HasActiveStatus(summon,status) == 0 and Osi.HasActiveStatus(summon,"SHARE_SPELLS") == 1 then
				Osi.ApplyStatus(summon,status,turns*6,1,causee)
				Osi.SetVarObject(causee,"ShareSpells_Status",summon)
			end
		end
	end
end)

-- Share Spells Status Remove
Ext.Osiris.RegisterListener("StatusRemoved", 4, "after", function (character, status, _, _)
	local summon = Osi.GetVarObject(character,"ShareSpells_Status")
	if Osi.HasPassive(character,"ShareSpells") == 1 and Osi.HasActiveStatus(summon,status) == 1 then
		Osi.RemoveStatus(summon,status)
	end
end)

--[[ Test
Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "before", function (caster, target, spell, _, _, _)
	if spell == "Target_Antagonize" then
		_D(Ext.Entity.Get(target):GetAllComponents())
	end
end)--]]

-- Spellcasting Ability Status
Ext.Osiris.RegisterListener("EnteredForceTurnBased", 1, "before", function (caster)
	if Osi.IsCharacter(caster) == 1 then
		for _, spell in pairs(Ext.Entity.Get(caster).SpellContainer.Spells) do
			if (spell.SpellId.OriginatorPrototype == "Projectile_Jump" and spell.SpellCastingAbility == "Intelligence") or (spell.SpellId.OriginatorPrototype == "Shout_Dash_NPC" and spell.SpellCastingAbility == "Intelligence") and Osi.HasActiveStatus(caster,"INTELLIGENCE_SPELLCASTING") == 0 then
				_D(spell.SpellCastingAbility)
				Osi.ApplyStatus(caster,"INTELLIGENCE_SPELLCASTING",-1.0,1)
			elseif (spell.SpellId.OriginatorPrototype == "Projectile_Jump" and spell.SpellCastingAbility == "Wisdom") or (spell.SpellId.OriginatorPrototype == "Shout_Dash_NPC" and spell.SpellCastingAbility == "Wisdom") and Osi.HasActiveStatus(caster,"WISDOM_SPELLCASTING") == 0 then
				_D(spell.SpellCastingAbility)
				Osi.ApplyStatus(caster,"WISDOM_SPELLCASTING",-1.0,1)
			elseif (spell.SpellId.OriginatorPrototype == "Projectile_Jump" and spell.SpellCastingAbility == "Charisma") or (spell.SpellId.OriginatorPrototype == "Shout_Dash_NPC" and spell.SpellCastingAbility == "Charisma") and Osi.HasActiveStatus(caster,"CHARISMA_SPELLCASTING") == 0 then
				_D(spell.SpellCastingAbility)
				Osi.ApplyStatus(caster,"CHARISMA_SPELLCASTING",-1.0,1)
			end
		end
	end
end)

-- Spellcasting Ability Status
Ext.Osiris.RegisterListener("EnteredCombat", 2, "before", function (caster, _)
	if Osi.IsCharacter(caster) == 1 then
		for _, spell in pairs(Ext.Entity.Get(caster).SpellContainer.Spells) do
			if (spell.SpellId.OriginatorPrototype == "Projectile_Jump" and spell.SpellCastingAbility == "Intelligence") or (spell.SpellId.OriginatorPrototype == "Shout_Dash_NPC" and spell.SpellCastingAbility == "Intelligence") and Osi.HasActiveStatus(caster,"INTELLIGENCE_SPELLCASTING") == 0 then
				_D(spell.SpellCastingAbility)
				Osi.ApplyStatus(caster,"INTELLIGENCE_SPELLCASTING",-1.0,1)
			elseif (spell.SpellId.OriginatorPrototype == "Projectile_Jump" and spell.SpellCastingAbility == "Wisdom") or (spell.SpellId.OriginatorPrototype == "Shout_Dash_NPC" and spell.SpellCastingAbility == "Wisdom") and Osi.HasActiveStatus(caster,"WISDOM_SPELLCASTING") == 0 then
				_D(spell.SpellCastingAbility)
				Osi.ApplyStatus(caster,"WISDOM_SPELLCASTING",-1.0,1)
			elseif (spell.SpellId.OriginatorPrototype == "Projectile_Jump" and spell.SpellCastingAbility == "Charisma") or (spell.SpellId.OriginatorPrototype == "Shout_Dash_NPC" and spell.SpellCastingAbility == "Charisma") and Osi.HasActiveStatus(caster,"CHARISMA_SPELLCASTING") == 0 then
				_D(spell.SpellCastingAbility)
				Osi.ApplyStatus(caster,"CHARISMA_SPELLCASTING",-1.0,1)
			end
		end
	end
end)

-- Spell Tracking
Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "before", function (caster, target, spell, _, _, _)
	if	Osi.HasPassive(target,"SpellThief") == 1 then
		Osi.SetVarString(target,"StoredLastSpell",spell)
		_D(caster .. " " .. spell)
	end
end)

-- Spell Tracking
Ext.Osiris.RegisterListener("UsingSpellOnZoneWithTarget", 6, "before", function (caster, target, spell, _, _, _)
	if	Osi.HasPassive(target,"SpellThief") == 1 then
		Osi.SetVarString(target,"StoredLastSpell",spell)
	end
end)

local spellThief = {
  Shout_ArmsOfHadar = "SPELL_THIEF_ARMS_OF_HADAR",
  Shout_ArmsOfHadar_2 = "SPELL_THIEF_ARMS_OF_HADAR",
  Shout_ArmsOfHadar_3 = "SPELL_THIEF_ARMS_OF_HADAR",
  Shout_ArmsOfHadar_4 = "SPELL_THIEF_ARMS_OF_HADAR",
  Target_Bane = "SPELL_THIEF_BANE",
  Target_Bane_2 = "SPELL_THIEF_BANE",
  Target_Bane_3 = "SPELL_THIEF_BANE",
  Target_Bane_4 = "SPELL_THIEF_BANE",
  Zone_BurningHands = "SPELL_THIEF_BURNING_HANDS",
  Zone_BurningHands_2 = "SPELL_THIEF_BURNING_HANDS",
  Zone_BurningHands_3 = "SPELL_THIEF_BURNING_HANDS",
  Zone_BurningHands_4 = "SPELL_THIEF_BURNING_HANDS",
  Target_CharmPerson = "SPELL_THIEF_CHARM_PERSON",
  Target_CharmPerson_2 = "SPELL_THIEF_CHARM_PERSON",
  Target_CharmPerson_3 = "SPELL_THIEF_CHARM_PERSON",
  Target_CharmPerson_4 = "SPELL_THIEF_CHARM_PERSON",
  Projectile_ChromaticOrb_Acid = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Cold = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Fire = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Lightning = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Poison = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Thunder = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Acid_2 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Cold_2 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Fire_2 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Lightning_2 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Poison_2 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Thunder_2 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Acid_3 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Cold_3 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Fire_3 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Lightning_3 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Poison_3 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Thunder_3 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Acid_4 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Cold_4 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Fire_4 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Lightning_4 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Poison_4 = "SPELL_THIEF_CHROMATIC_ORB",
  Projectile_ChromaticOrb_Thunder_4 = "SPELL_THIEF_CHROMATIC_ORB",
  Zone_ColorSpray = "SPELL_THIEF_COLOR_SPRAY",
  Zone_ColorSpray_2 = "SPELL_THIEF_COLOR_SPRAY",
  Zone_ColorSpray_3 = "SPELL_THIEF_COLOR_SPRAY",
  Zone_ColorSpray_4 = "SPELL_THIEF_COLOR_SPRAY",
  Target_Command_Halt = "SPELL_THIEF_COMMAND",
  Target_Command_Approach = "SPELL_THIEF_COMMAND",
  Target_Command_Drop = "SPELL_THIEF_COMMAND",
  Target_Command_Flee = "SPELL_THIEF_COMMAND",
  Target_Command_Grovel = "SPELL_THIEF_COMMAND",
  Target_Command_Halt_2 = "SPELL_THIEF_COMMAND",
  Target_Command_Approach_2 = "SPELL_THIEF_COMMAND",
  Target_Command_Drop_2 = "SPELL_THIEF_COMMAND",
  Target_Command_Flee_2 = "SPELL_THIEF_COMMAND",
  Target_Command_Grovel_2 = "SPELL_THIEF_COMMAND",
  Target_Command_Halt_3 = "SPELL_THIEF_COMMAND",
  Target_Command_Approach_3 = "SPELL_THIEF_COMMAND",
  Target_Command_Drop_3 = "SPELL_THIEF_COMMAND",
  Target_Command_Flee_3 = "SPELL_THIEF_COMMAND",
  Target_Command_Grovel_3 = "SPELL_THIEF_COMMAND",
  Target_Command_Halt_4 = "SPELL_THIEF_COMMAND",
  Target_Command_Approach_4 = "SPELL_THIEF_COMMAND",
  Target_Command_Drop_4 = "SPELL_THIEF_COMMAND",
  Target_Command_Flee_4 = "SPELL_THIEF_COMMAND",
  Target_Command_Grovel_4 = "SPELL_THIEF_COMMAND",
  Target_DissonantWhispers = "SPELL_THIEF_DISSONANT_WHISPERS",
  Target_DissonantWhispers_2 = "SPELL_THIEF_DISSONANT_WHISPERS",
  Target_DissonantWhispers_3 = "SPELL_THIEF_DISSONANT_WHISPERS",
  Target_DissonantWhispers_4 = "SPELL_THIEF_DISSONANT_WHISPERS",
  Target_CompelledDuel = "SPELL_THIEF_COMPELLED_DUEL",
  Target_CompelledDuel_2 = "SPELL_THIEF_COMPELLED_DUEL",
  Target_CompelledDuel_3 = "SPELL_THIEF_COMPELLED_DUEL",
  Target_CompelledDuel_4 = "SPELL_THIEF_COMPELLED_DUEL",
  Target_FaerieFire = "SPELL_THIEF_FAERIE_FIRE",
  Target_FaerieFire_2 = "SPELL_THIEF_FAERIE_FIRE",
  Target_FaerieFire_3 = "SPELL_THIEF_FAERIE_FIRE",
  Target_FaerieFire_4 = "SPELL_THIEF_FAERIE_FIRE",
  Target_FogCloud = "SPELL_THIEF_FOG_CLOUD",
  Target_FogCloud_2 = "SPELL_THIEF_FOG_CLOUD",
  Target_FogCloud_3 = "SPELL_THIEF_FOG_CLOUD",
  Target_FogCloud_4 = "SPELL_THIEF_FOG_CLOUD",
  Target_Grease = "SPELL_THIEF_GREASE",
  Target_Grease_2 = "SPELL_THIEF_GREASE",
  Target_Grease_3 = "SPELL_THIEF_GREASE",
  Target_Grease_4 = "SPELL_THIEF_GREASE",
  Projectile_GuidingBolt = "SPELL_THIEF_GUIDING_BOLT",
  Projectile_GuidingBolt_2 = "SPELL_THIEF_GUIDING_BOLT",
  Projectile_GuidingBolt_3 = "SPELL_THIEF_GUIDING_BOLT",
  Projectile_GuidingBolt_4 = "SPELL_THIEF_GUIDING_BOLT",
  Target_Hex_Strength = "SPELL_THIEF_HEX",
  Target_Hex_Dexterity = "SPELL_THIEF_HEX",
  Target_Hex_Constitution = "SPELL_THIEF_HEX",
  Target_Hex_Intelligence = "SPELL_THIEF_HEX",
  Target_Hex_Wisdom = "SPELL_THIEF_HEX",
  Target_Hex_Charisma = "SPELL_THIEF_HEX",
  Target_Hex_Strength_2 = "SPELL_THIEF_HEX",
  Target_Hex_Dexterity_2 = "SPELL_THIEF_HEX",
  Target_Hex_Constitution_2 = "SPELL_THIEF_HEX",
  Target_Hex_Intelligence_2 = "SPELL_THIEF_HEX",
  Target_Hex_Wisdom_2 = "SPELL_THIEF_HEX",
  Target_Hex_Charisma_2 = "SPELL_THIEF_HEX",
  Target_Hex_Strength_3 = "SPELL_THIEF_HEX",
  Target_Hex_Dexterity_3 = "SPELL_THIEF_HEX",
  Target_Hex_Constitution_3 = "SPELL_THIEF_HEX",
  Target_Hex_Intelligence_3 = "SPELL_THIEF_HEX",
  Target_Hex_Wisdom_3 = "SPELL_THIEF_HEX",
  Target_Hex_Charisma_3 = "SPELL_THIEF_HEX",
  Target_Hex_Strength_4 = "SPELL_THIEF_HEX",
  Target_Hex_Dexterity_4 = "SPELL_THIEF_HEX",
  Target_Hex_Constitution_4 = "SPELL_THIEF_HEX",
  Target_Hex_Intelligence_4 = "SPELL_THIEF_HEX",
  Target_Hex_Wisdom_4 = "SPELL_THIEF_HEX",
  Target_Hex_Charisma_4 = "SPELL_THIEF_HEX",
  Target_HideousLaughter = "SPELL_THIEF_HIDEOUS_LAUGHTER",
  Target_HideousLaughter_2 = "SPELL_THIEF_HIDEOUS_LAUGHTER",
  Target_HideousLaughter_3 = "SPELL_THIEF_HIDEOUS_LAUGHTER",
  Target_HideousLaughter_4 = "SPELL_THIEF_HIDEOUS_LAUGHTER",
  Target_HuntersMark = "SPELL_THIEF_HUNTERS_MARK",
  Target_HuntersMark_2 = "SPELL_THIEF_HUNTERS_MARK",
  Target_HuntersMark_3 = "SPELL_THIEF_HUNTERS_MARK",
  Target_HuntersMark_4 = "SPELL_THIEF_HUNTERS_MARK",
  Projectile_IceKnife = "SPELL_THIEF_ICE_SPIKE",
  Projectile_IceKnife_2 = "SPELL_THIEF_ICE_SPIKE",
  Projectile_IceKnife_3 = "SPELL_THIEF_ICE_SPIKE",
  Projectile_IceKnife_4 = "SPELL_THIEF_ICE_SPIKE",
  Target_InflictWounds = "SPELL_THIEF_INFLICT_WOUNDS",
  Target_InflictWounds_2 = "SPELL_THIEF_INFLICT_WOUNDS",
  Target_InflictWounds_3 = "SPELL_THIEF_INFLICT_WOUNDS",
  Target_InflictWounds_4 = "SPELL_THIEF_INFLICT_WOUNDS",
  Projectile_MagicMissile = "SPELL_THIEF_MAGIC_MISSILE",
  Projectile_MagicMissile_2 = "SPELL_THIEF_MAGIC_MISSILE",
  Projectile_MagicMissile_3 = "SPELL_THIEF_MAGIC_MISSILE",
  Projectile_MagicMissile_4 = "SPELL_THIEF_MAGIC_MISSILE",
  Projectile_RayOfSickness = "SPELL_THIEF_RAY_OF_SICKNESS",
  Projectile_RayOfSickness_2 = "SPELL_THIEF_RAY_OF_SICKNESS",
  Projectile_RayOfSickness_3 = "SPELL_THIEF_RAY_OF_SICKNESS",
  Projectile_RayOfSickness_4 = "SPELL_THIEF_RAY_OF_SICKNESS",
  Target_Sleep = "SPELL_THIEF_SLEEP",
  Target_Sleep_2 = "SPELL_THIEF_SLEEP",
  Target_Sleep_3 = "SPELL_THIEF_SLEEP",
  Target_Sleep_4 = "SPELL_THIEF_SLEEP",
  Zone_Thunderwave = "SPELL_THIEF_THUNDERWAVE",
  Zone_Thunderwave_2 = "SPELL_THIEF_THUNDERWAVE",
  Zone_Thunderwave_3 = "SPELL_THIEF_THUNDERWAVE",
  Zone_Thunderwave_4 = "SPELL_THIEF_THUNDERWAVE",
  Projectile_WitchBolt = "SPELL_THIEF_WITCH_BOLT",
  Projectile_WitchBolt_2 = "SPELL_THIEF_WITCH_BOLT",
  Projectile_WitchBolt_3 = "SPELL_THIEF_WITCH_BOLT",
  Projectile_WitchBolt_4 = "SPELL_THIEF_WITCH_BOLT",
  Projectile_AcidArrow = "SPELL_THIEF_ACID_ARROW",
  Projectile_AcidArrow_3 = "SPELL_THIEF_ACID_ARROW",
  Projectile_AcidArrow_4 = "SPELL_THIEF_ACID_ARROW",
  Zone_AganazzarsScorcher = "SPELL_THIEF_AGANAZZARS_SCORCHER",
  Zone_AganazzarsScorcher_3 = "SPELL_THIEF_AGANAZZARS_SCORCHER",
  Zone_AganazzarsScorcher_4 = "SPELL_THIEF_AGANAZZARS_SCORCHER",
  Target_Blindness = "SPELL_THIEF_BLINDNESS",
  Target_Blindness_3 = "SPELL_THIEF_BLINDNESS",
  Target_Blindness_4 = "SPELL_THIEF_BLINDNESS",
  Target_CloudOfDaggers = "SPELL_THIEF_CLOUD_OF_DAGGERS",
  Target_CloudOfDaggers_3 = "SPELL_THIEF_CLOUD_OF_DAGGERS",
  Target_CloudOfDaggers_4 = "SPELL_THIEF_CLOUD_OF_DAGGERS",
  Target_CrownOfMadness = "SPELL_THIEF_CROWN_OF_MADNESS",
  Target_CrownOfMadness_3 = "SPELL_THIEF_CROWN_OF_MADNESS",
  Target_CrownOfMadness_4 = "SPELL_THIEF_CROWN_OF_MADNESS",
  Target_Darkness = "SPELL_THIEF_DARKNESS",
  Target_Darkness_3 = "SPELL_THIEF_DARKNESS",
  Target_Darkness_4 = "SPELL_THIEF_DARKNESS",
  Target_Reduce = "SPELL_THIEF_REDUCE",
  Target_Reduce_3 = "SPELL_THIEF_REDUCE",
  Target_Reduce_4 = "SPELL_THIEF_REDUCE",
  Target_Enthrall = "SPELL_THIEF_ENTHRALL",
  Target_Enthrall_3 = "SPELL_THIEF_ENTHRALL",
  Target_Enthrall_4 = "SPELL_THIEF_ENTHRALL",
  Zone_GustOfWind = "SPELL_THIEF_GUST_OF_WIND",
  Zone_GustOfWind_3 = "SPELL_THIEF_GUST_OF_WIND",
  Zone_GustOfWind_4 = "SPELL_THIEF_GUST_OF_WIND",
  Target_HeatMetal = "SPELL_THIEF_HEAT_METAL",
  Target_HeatMetal_3 = "SPELL_THIEF_HEAT_METAL",
  Target_HeatMetal_4 = "SPELL_THIEF_HEAT_METAL",
  Target_HoldPerson = "SPELL_THIEF_HOLD_PERSON",
  Target_HoldPerson_3 = "SPELL_THIEF_HOLD_PERSON",
  Target_HoldPerson_4 = "SPELL_THIEF_HOLD_PERSON",
  Target_PhantasmalForce = "SPELL_THIEF_PHANTASMAL_FORCE",
  Target_PhantasmalForce_3 = "SPELL_THIEF_PHANTASMAL_FORCE",
  Target_PhantasmalForce_4 = "SPELL_THIEF_PHANTASMAL_FORCE",
  Projectile_RayOfEnfeeblement = "SPELL_THIEF_RAY_OF_ENFEEBLEMENT",
  Projectile_RayOfEnfeeblement_3 = "SPELL_THIEF_RAY_OF_ENFEEBLEMENT",
  Projectile_RayOfEnfeeblement_4 = "SPELL_THIEF_RAY_OF_ENFEEBLEMENT",
  Projectile_ScorchingRay = "SPELL_THIEF_SCORCHING_RAY",
  Projectile_ScorchingRay_3 = "SPELL_THIEF_SCORCHING_RAY",
  Projectile_ScorchingRay_4 = "SPELL_THIEF_SCORCHING_RAY",
  Target_Shatter = "SPELL_THIEF_SHATTER",
  Target_Shatter_3 = "SPELL_THIEF_SHATTER",
  Target_Shatter_4 = "SPELL_THIEF_SHATTER",
  Target_Web = "SPELL_THIEF_WEB",
  Target_Web_3 = "SPELL_THIEF_WEB",
  Target_Web_4 = "SPELL_THIEF_WEB",
  Target_BestowCurse_Ability_Strength = "SPELL_THIEF_BESTOW_CURSE",
  Target_BestowCurse_Ability_Dexterity = "SPELL_THIEF_BESTOW_CURSE",
  Target_BestowCurse_Ability_Constitution = "SPELL_THIEF_BESTOW_CURSE",
  Target_BestowCurse_Ability_Intelligence = "SPELL_THIEF_BESTOW_CURSE",
  Target_BestowCurse_Ability_Wisdom = "SPELL_THIEF_BESTOW_CURSE",
  Target_BestowCurse_Ability_Charisma = "SPELL_THIEF_BESTOW_CURSE",
  Target_BestowCurse_Attack = "SPELL_THIEF_BESTOW_CURSE",
  Target_BestowCurse_ExtraDamage = "SPELL_THIEF_BESTOW_CURSE",
  Target_BestowCurse_SkipTurn = "SPELL_THIEF_BESTOW_CURSE",
  Zone_Fear = "SPELL_THIEF_FEAR",
  Zone_Fear_4 = "SPELL_THIEF_FEAR",
  Projectile_Fireball = "SPELL_THIEF_FIREBALL",
  Projectile_Fireball_4 = "SPELL_THIEF_FIREBALL",
  Target_HypnoticPattern = "SPELL_THIEF_HYPNOTIC_PATTERN",
  Target_HypnoticPattern_4 = "SPELL_THIEF_HYPNOTIC_PATTERN",
  Target_SleetStorm = "SPELL_THIEF_SLEET_STORM",
  Target_SleetStorm_4 = "SPELL_THIEF_SLEET_STORM",
  Target_Slow = "SPELL_THIEF_SLOW",
  Target_Slow_4 = "SPELL_THIEF_SLOW",
  Target_StinkingCloud = "SPELL_THIEF_STINKING_CLOUD",
  Target_StinkingCloud_4 = "SPELL_THIEF_STINKING_CLOUD",
  Target_Banishment = "SPELL_THIEF_BANISHMENT",
  Target_Blight = "SPELL_THIEF_BLIGHT",
  Target_Confusion = "SPELL_THIEF_CONFUSION",
  Target_DominateBeast = "SPELL_THIEF_DOMINATE_BEAST",
  Target_IceStorm = "SPELL_THIEF_ICE_STORM",
  Target_PhantasmalKiller = "SPELL_THIEF_PHANTASMAL_KILLER",
  Target_Polymorph = "SPELL_THIEF_POLYMORPH",
  Target_ResilientSphere = "SPELL_THIEF_RESILIENT_SPHERE",
  Wall_WallOfFire = "SPELL_THIEF_WALL_OF_FIRE"
}

-- Spell Thief Spell Learning
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
	if status == "SPELL_THIEF" then
		local spellname = Osi.GetVarString(causee,"StoredLastSpell")
		local spells = Ext.Stats.Get(spellname)
		_D(character .. " " .. spellname)
		for _, book in pairs(Ext.Entity.Get(character).SpellBook.Spells) do
			for spell, spellstatus in pairs(spellThief) do
				if book.Id.OriginatorPrototype == spellname and spell == spellname then
					if	(spells.Level < 5 and spells.Level > 0) or (spells.PowerLevel < 5 or spells.PowerLevel > 0) and Osi.HasActiveStatus(causee,spellstatus) == 0 then
						Osi.ApplyStatus(causee,spellstatus,-1.0,1,causee)
					end
				end
			end
		end
	end
end)

--[[ Rebuke the Violent
local function GetEntityUuid(entity)
    if entity.ServerCharacter ~= nil then
        return entity.Uuid.EntityUuid
    end
end

local function GetEntityStatus(entity, statusId)
    if entity.ServerCharacter ~= nil then
        return entity.ServerCharacter.Character:GetStatus(statusId)
    elseif entity.ServerItem ~= nil then
        for _, esvStatus in pairs(entity.ServerItem.Item.StatusManager.Statuses) do
            if esvStatus.StatusId == statusId then
                return esvStatus
            end
        end
    end
end

-- Rebuke the Violent Redirected Damage
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
    if    status == "REBUKE_THE_VIOLENT_REDIRECT_FULL" then
        local damage = Osi.GetVarInteger(character,"CasterDealtDamage")
        local rtvstatus = "OATH_OF_REDEMPTION_DAMAGE_" .. damage
        Osi.ApplyStatus(character,rtvstatus,0.0,1,causee)
    elseif    status == "REBUKE_THE_VIOLENT_REDIRECT_HALF" or status == "EMISSARY_OF_REDEMPTION_REFLECT" then
		_D("Works")
        local damage = Osi.GetVarInteger(character,"CasterDealtDamage")
        damage = math.floor(damage / 2)
        local rtvstatus = "OATH_OF_REDEMPTION_DAMAGE_" .. damage
		Osi.ApplyStatus(character,rtvstatus,0.0,1,causee)
    end
end)

-- Emissary of Redemption
Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "before", function (caster, target, _, _, _, _)
	if Osi.HasActiveStatus(caster,"EMISSARY_OF_REDEMPTION") == 1 and Osi.HasActiveStatus(target,"EMISSARY_OF_REDEMPTION_RESISTANCE") == 1 then
		Osi.RemoveStatus(target,"EMISSARY_OF_REDEMPTION_RESISTANCE")
	elseif Osi.HasActiveStatus(caster,"EMISSARY_OF_REDEMPTION") == 0 and Osi.HasActiveStatus(target,"EMISSARY_OF_REDEMPTION_RESISTANCE_TECHNICAL") == 1 then
		Osi.ApplyStatus(target,"EMISSARY_OF_REDEMPTION_RESISTANCE",-1.0,1)
    end
end)

-- Emissary of Redemption
Ext.Osiris.RegisterListener("UsingSpellOnZoneWithTarget", 6, "before", function (caster, target, _, _, _, _)
	if Osi.HasActiveStatus(caster,"EMISSARY_OF_REDEMPTION") == 1 and Osi.HasActiveStatus(target,"EMISSARY_OF_REDEMPTION_RESISTANCE") == 1 then
		Osi.RemoveStatus(target,"EMISSARY_OF_REDEMPTION_RESISTANCE")
	elseif Osi.HasActiveStatus(caster,"EMISSARY_OF_REDEMPTION") == 0 and Osi.HasActiveStatus(target,"EMISSARY_OF_REDEMPTION_RESISTANCE_TECHNICAL") == 1 then
		Osi.ApplyStatus(target,"EMISSARY_OF_REDEMPTION_RESISTANCE",-1.0,1)
    end
end)

-- Emissary of Redemption
Ext.Osiris.RegisterListener("StatusAttempt", 4, "before", function (character, status, _, _)
	if status == "EMISSARY_OF_REDEMPTION_RESISTANCE" and Osi.HasActiveStatus(character,"EMISSARY_OF_REDEMPTION_RESISTANCE") == 0 then
		Osi.ApplyStatus(character,"EMISSARY_OF_REDEMPTION_RESISTANCE",-1.0,1)
	elseif status == "EMISSARY_OF_REDEMPTION_RESISTANCE_TECHNICAL" and Osi.HasActiveStatus(character,"EMISSARY_OF_REDEMPTION_RESISTANCE_TECHNICAL") == 0 then
		Osi.ApplyStatus(character,"EMISSARY_OF_REDEMPTION_RESISTANCE_TECHNICAL",-1.0,1)
    end
end)

-- Aura of the Guardian and Emissary of Redemption
Ext.Events.DealDamage:Subscribe(function(e)
    if GetEntityStatus(e.Target,"AURA_OF_THE_GUARDIAN_TECHNICAL") ~= nil then
        local target = GetEntityUuid(e.Target)
        local beforehp = Osi.GetHitpoints(target)
        Osi.SetVarInteger(target,"AotG",beforehp)
    elseif GetEntityStatus(e.Caster,"EMISSARY_OF_REDEMPTION") ~= nil then
        local target = GetEntityUuid(e.Target)
		Osi.RemoveStatus(target,"EMISSARY_OF_REDEMPTION_RESISTANCE")
    end
end)

--[[Ext.Events.DealtDamage:Subscribe(function(e)
    if e.DamageSums.TotalDamageDone > 0 and GetEntityStatus(e.Target,"AURA_OF_THE_GUARDIAN_TECHNICAL") ~= nil and GetEntityStatus(e.Target,"AURA_OF_THE_GUARDIAN") == nil then
        local damage = e.Result.DamageSums.TotalDamageDone
        local target = GetEntityUuid(e.Target)
        local beforehp = Osi.GetVarInteger(target,"AotG")
        local hp = Osi.GetHitpoints(target)
        if damage > beforehp and Osi.HasActiveStatus(target,"AURA_OF_THE_GUARDIAN") == 0 then
            Osi.SetHitpoints(target,beforehp,"Guaranteed")
        elseif damage <= beforehp then
            hp = hp + damage
            Osi.SetHitpoints(target,hp,"Guaranteed")
        end
    elseif e.Result.DamageSums.TotalDamageDone > 0 and GetEntityStatus(e.Target,"AURA_OF_THE_GUARDIAN_TECHNICAL") ~= nil and GetEntityStatus(e.Target,"AURA_OF_THE_GUARDIAN") == nil then
        local damage = e.Result.DamageSums.TotalDamageDone
        local target = GetEntityUuid(e.Target)
        local beforehp = Osi.GetVarInteger(target,"AotG")
        local hp = Osi.GetHitpoints(target)
        if damage > beforehp and Osi.HasActiveStatus(target,"AURA_OF_THE_GUARDIAN") == 0 then
            Osi.SetHitpoints(target,beforehp,"Guaranteed")
        elseif damage <= beforehp then
            hp = hp + damage
            Osi.SetHitpoints(target,hp,"Guaranteed")
		end
    elseif e.Result.DamageSums.TotalDamageDone > 0 and e.Hit.HitWith ~= "FallDamage" and GetEntityStatus(e.Target,"AURA_OF_THE_GUARDIAN_TECHNICAL") == nil then
        local damage = e.Result.DamageSums.TotalDamageDone
        local target = GetEntityUuid(e.Target)
        local caster = GetEntityUuid(e.Hit.Inflicter)
        if caster ~= nil and target ~= nil then
            Osi.SetVarInteger(target,"TargetDealtDamage",damage)
            Osi.SetVarInteger(caster,"CasterDealtDamage",damage)
		end
    elseif e.DamageSums.TotalDamageDone > 0 and GetEntityStatus(e.Target,"EMISSARY_OF_REDEMPTION_RESISTANCE_TECHNICAL") ~= nil then
        local target = GetEntityUuid(e.Target)
		Osi.ApplyStatus(target,"EMISSARY_OF_REDEMPTION_RESISTANCE",-1.0,1)
    end
end)

---@param e EsvLuaDealtDamageEvent
Ext.Events.DealtDamage:Subscribe(function(e)
	if  e.Hit.HitWith ~= "FallDamage" then
	local damage = e.Result.DamageSums.TotalDamageDone
	local target = GetEntityUuid(e.Target)
	local caster = GetEntityUuid(e.Caster)
	local beforehp = Osi.GetVarInteger(target,"AotG")
	local hp = Osi.GetHitpoints(target)
	_D(damage .. " Damage was Dealt")
		if target ~= nil and caster ~= nil then
			Osi.SetVarInteger(target,"TargetDealtDamage",damage)
			Osi.SetVarInteger(caster,"CasterDealtDamage",damage)
		end

		if Osi.HasPassive(target,"EmissaryOfRedemption") == 1 and Osi.HasActiveStatus(caster,"EMISSARY_OF_REDEMPTION") == 0 and e.DamageSums.TotalDamageDone == 0 then
			_D(damage)
			damage = math.floor(damage / 2)
			local rtvstatus = "OATH_OF_REDEMPTION_DAMAGE_" .. damage
			Osi.ApplyStatus(caster,rtvstatus,0.0,1,target)
		end

		if Osi.HasPassive(target,"EmissaryOfRedemption") == 1 and Osi.HasActiveStatus(caster,"EMISSARY_OF_REDEMPTION") == 0 and e.DamageSums.TotalDamageDone > 0 then
			local prevdamage = e.DamageSums.TotalDamageDone
			damage = damage - prevdamage
			damage = math.floor(damage / 2)
			local rtvstatus = "OATH_OF_REDEMPTION_DAMAGE_" .. damage
			Osi.ApplyStatus(caster,rtvstatus,0.0,1,target)
		end
		
		if beforehp ~= nil and damage > beforehp and Osi.HasActiveStatus(target,"AURA_OF_THE_GUARDIAN_TECHNICAL") == 1 then
			Osi.SetHitpoints(target,beforehp,"Guaranteed")
		elseif beforehp ~= nil and damage <= beforehp then
			hp = hp + damage
			Osi.SetHitpoints(target,hp,"Guaranteed")
		end
	end
end)--]]

--[[ Status Debug Text
Ext.Osiris.RegisterListener("StatusApplied",4, "after",function (character, status, _, _)
	if status ~= "INSURFACE" then
	local disname = Osi.GetDisplayName(character)
	local name = Osi.ResolveTranslatedString(disname)
	local str = status .. " status applied to "
	_D(str .. name)
	end
end)

-- Status Debug Text
Ext.Osiris.RegisterListener("StatusRemoved",4, "after",function (character, status, _, _)
	if status ~= "INSURFACE" then
	local disname = Osi.GetDisplayName(character)
	local name = Osi.ResolveTranslatedString(disname)
	local str = status .. " status removed from "
	_D(str .. name)
	end
end)

-- Spell Casting Debug
Ext.Osiris.RegisterListener("UsingSpell",5, "before",function (caster, spell, _, _, _)
	_D(spell)
end)--]]