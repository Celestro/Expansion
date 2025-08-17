Ext.Require("EXP_SharedBootstrap.lua")

local function GetEntityUuid(entity)
    if entity.ServerCharacter ~= nil then
        return entity.Uuid.EntityUuid
    end
end

local function GetEntityStatus(entity, statusId)
    if entity.ServerCharacter ~= nil then
        return entity.ServerCharacter.Character:GetStatus(statusId)
    elseif entity.ServerItem ~= nil then
        for _, esvStatus in pairs(entity.ServerItem.StatusManager.Statuses) do
            if esvStatus.StatusId == statusId then
                return esvStatus
            end
        end
    end
end

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

--[[ Temporary Proficiency Bonus Override Replacement
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(character, status, _,_)
    if status == "SNEAKING" and Osi.IsPlayer(character) == 1 then
		local toc = Ext.Stats.Get("Interrupt_TidesOfChaos")
		if string.find(toc.Conditions, "HasInterruptedAttack%(%)") then--]]
--				advstatus.Boosts = string.gsub(advstatus.Boosts, ";Advantage%(AttackRoll%)", ";IF(not EXP_CanSeeInvisible(context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll)")
--[[				_D(toc.Conditions)
		end
	end
end)--]]

-- Tireless THP
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, _, _)
	if status == "DEFT_EXPLORER_TIRELESS_TEMPHP" then
		local wis = Osi.GetAbility(character,"Wisdom")
		local wismod = math.floor((wis - 10) / 2)
		local result = wismod + Random(8)
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

local cleansingtouchstatus = {}

function EXP_IsSpell(name)
	local spell = Ext.Stats.Get(name)
    for _,flag in pairs(spell.SpellFlags) do
        if flag == "IsSpell" then
            return true
        end
    end
    return false
end

-- Cleansing Touch
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (object, status, causee, _)
	if status == "CLEANSING_TOUCH" and Osi.IsCharacter(object) == 1 then
		for _, esvStatus in pairs(Ext.Entity.Get(object).ServerCharacter.StatusManager.Statuses) do
			if Osi.SpellHasSpellFlag(esvStatus.SourceSpell.Prototype, "IsSpell") == 1 then
				cleansingtouchstatus = esvStatus.SourceSpell.Prototype
				Osi.RemoveStatus(object,esvStatus.StatusId)
			end
		end
	end
end)

-- Share Spells Setup
Ext.Osiris.RegisterListener("StatusAttempt", 4, "after", function (character, status, causee, _)
	if (status == "RANGERS_COMPANION_BEAR" or status == "RANGERS_COMPANION_BOAR" or status == "RANGERS_COMPANION_GIANTSPIDER" or status == "RANGERS_COMPANION_RAVEN" or status == "RANGERS_COMPANION_WOLF" or status == "RANGERS_COMPANION_PANTHER") and Osi.HasPassive(causee,"ShareSpells") == 1 then
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

local shareSpellsStatuses = {
  "SPIRIT_GUARDIANS_RADIANT_AURA",
  "SPIRIT_GUARDIANS_RADIANT_AURA_4",
  "SPIRIT_GUARDIANS_RADIANT_AURA_5",
  "SPIRIT_GUARDIANS_RADIANT_AURA_6",
  "SPIRIT_GUARDIANS_RADIANT_AURA_7",
  "SPIRIT_GUARDIANS_RADIANT_AURA_8",
  "SPIRIT_GUARDIANS_RADIANT_AURA_9",
  "SPIRIT_GUARDIANS_NECROTIC_AURA",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_4",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_5",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_6",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_7",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_8",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_9"
}

local shareSpellsCompanionStatuses = {
  "SPIRIT_GUARDIANS_RADIANT_AURA_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_RADIANT_AURA_4_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_RADIANT_AURA_5_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_RADIANT_AURA_6_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_RADIANT_AURA_7_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_RADIANT_AURA_8_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_RADIANT_AURA_9_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_4_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_5_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_6_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_7_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_8_SHARE_SPELLS",
  "SPIRIT_GUARDIANS_NECROTIC_AURA_9_SHARE_SPELLS"
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
			for _, exStatus in pairs(shareSpellsStatuses) do
				local summon = Osi.GetVarObject(character,"ShareSpells")
				local turns = Osi.GetStatusTurns(character,status)
				if status == exStatus then
					local template = Osi.GetTemplate(summon)
					local stat = Ext.Template.GetTemplate(string.sub(template,-36))
					local spellsc = Ext.Stats.Get(stat.Stats)
					spellsc.SpellCastingAbility="Wisdom"
					spellsc:Sync()
					local wis = Osi.GetAbility(character,"Wisdom")
					local wismod = math.floor((wis - 10) / 2)
					local sumwismod = math.floor((spellsc.Wisdom - 10) / 2)
					local result = wismod - sumwismod
					Osi.ApplyStatus(summon,"SHARE_SPELLS_DC_" .. result,turns*6,1)
					if Ext.Mod.IsModLoaded("f19c68ed-70be-4c3d-b610-e94afc5c5103") then
						local sharedstatus = status .. "_SHARE_SPELLS"
						if statusChar.SourceSpell.Prototype ~= nil and statusChar.SourceSpell.Prototype ~= "" and statusChar.StatusId == status and status ~= "FAERIE_FIRE" and Osi.SpellHasSpellFlag(statusChar.SourceSpell.Prototype, "IsSpell") == 1 and Osi.HasActiveStatus(summon,sharedstatus) == 0 and Osi.HasActiveStatus(summon,"SHARE_SPELLS") == 1 then
							Osi.ApplyStatus(summon,sharedstatus,turns*6,1,causee)
							Osi.SetVarObject(causee,"ShareSpells_Status",summon)
						end
					else
						if statusChar.SourceSpell.Prototype ~= nil and statusChar.SourceSpell.Prototype ~= "" and statusChar.StatusId == status and status ~= "FAERIE_FIRE" and Osi.SpellHasSpellFlag(statusChar.SourceSpell.Prototype, "IsSpell") == 1 and Osi.HasActiveStatus(summon,status) == 0 and Osi.HasActiveStatus(summon,"SHARE_SPELLS") == 1 then
							Osi.ApplyStatus(summon,status,turns*6,1,causee)
							Osi.SetVarObject(causee,"ShareSpells_Status",summon)
						end
					end
				elseif statusChar.SourceSpell.Prototype ~= nil and statusChar.SourceSpell.Prototype ~= "" and statusChar.StatusId == status and status ~= exStatus and Osi.SpellHasSpellFlag(statusChar.SourceSpell.Prototype, "IsSpell") == 1 and Osi.HasActiveStatus(summon,status) == 0 and Osi.HasActiveStatus(summon,"SHARE_SPELLS") == 1 then
					Osi.ApplyStatus(summon,status,turns*6,1,causee)
					Osi.SetVarObject(causee,"ShareSpells_Status",summon)
				end

				if Osi.SpellHasSpellFlag(statusChar.SourceSpell.Prototype,"IsConcentration") == 1 then
					Osi.SetVarInteger(causee,"ShareSpells_ConcentrationStatus",1)
				end
			end
		end
	end
end)

-- Share Spells Status Remove
Ext.Osiris.RegisterListener("StatusRemoved", 4, "before", function (character, status, _, _)
	local summon = Osi.GetVarObject(character,"ShareSpells_Status")
	local boolean = Osi.GetVarInteger(character,"ShareSpells_ConcentrationStatus")
	local sharedstatus = status .. "_SHARE_SPELLS"
	for _, shareStatus in pairs(shareSpellsCompanionStatuses) do
		if Osi.HasPassive(character,"ShareSpells") == 1 and (Osi.HasActiveStatus(summon,status) == 1 or Osi.HasActiveStatus(summon,sharedstatus) == 1) and boolean == 1 then
			Osi.RemoveStatus(summon,status)
			Osi.RemoveStatus(summon,sharedstatus)
			Osi.SetVarInteger(character,"ShareSpells_ConcentrationStatus",0)
		end

		if status == shareStatus then
			local template = Osi.GetTemplate(character)
			local stat = Ext.Template.GetTemplate(string.sub(template,-36))
			local spellsc = Ext.Stats.Get(stat.Stats)
			spellsc.SpellCastingAbility="Strength"
			spellsc:Sync()
--			_D("Switched companion's SpellCastingAbility modifier to Strength")
		end
	end
end)

-- Spellcasting Ability Status
Ext.Osiris.RegisterListener("EnteredForceTurnBased", 1, "before", function (caster)
	if Osi.IsCharacter(caster) == 1 then
		for _, spell in pairs(Ext.Entity.Get(caster).SpellContainer.Spells) do
			if (spell.SpellId.OriginatorPrototype == "Projectile_Jump" and spell.SpellCastingAbility == "Intelligence") or (spell.SpellId.OriginatorPrototype == "Shout_Dash_NPC" and spell.SpellCastingAbility == "Intelligence") and Osi.HasActiveStatus(caster,"INTELLIGENCE_SPELLCASTING") == 0 then
				Osi.ApplyStatus(caster,"INTELLIGENCE_SPELLCASTING",-1.0,1)
			elseif (spell.SpellId.OriginatorPrototype == "Projectile_Jump" and spell.SpellCastingAbility == "Wisdom") or (spell.SpellId.OriginatorPrototype == "Shout_Dash_NPC" and spell.SpellCastingAbility == "Wisdom") and Osi.HasActiveStatus(caster,"WISDOM_SPELLCASTING") == 0 then
				Osi.ApplyStatus(caster,"WISDOM_SPELLCASTING",-1.0,1)
			elseif (spell.SpellId.OriginatorPrototype == "Projectile_Jump" and spell.SpellCastingAbility == "Charisma") or (spell.SpellId.OriginatorPrototype == "Shout_Dash_NPC" and spell.SpellCastingAbility == "Charisma") and Osi.HasActiveStatus(caster,"CHARISMA_SPELLCASTING") == 0 then
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
				Osi.ApplyStatus(caster,"INTELLIGENCE_SPELLCASTING",-1.0,1)
			elseif (spell.SpellId.OriginatorPrototype == "Projectile_Jump" and spell.SpellCastingAbility == "Wisdom") or (spell.SpellId.OriginatorPrototype == "Shout_Dash_NPC" and spell.SpellCastingAbility == "Wisdom") and Osi.HasActiveStatus(caster,"WISDOM_SPELLCASTING") == 0 then
				Osi.ApplyStatus(caster,"WISDOM_SPELLCASTING",-1.0,1)
			elseif (spell.SpellId.OriginatorPrototype == "Projectile_Jump" and spell.SpellCastingAbility == "Charisma") or (spell.SpellId.OriginatorPrototype == "Shout_Dash_NPC" and spell.SpellCastingAbility == "Charisma") and Osi.HasActiveStatus(caster,"CHARISMA_SPELLCASTING") == 0 then
				Osi.ApplyStatus(caster,"CHARISMA_SPELLCASTING",-1.0,1)
			end
		end
	end
end)

-- Spell Tracking
Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "before", function (caster, target, spell, _, _, _)
	if	Osi.HasPassive(target,"SpellThief") == 1 then
		Osi.SetVarString(target,"StoredLastSpell",spell)
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

-- Improved Duplicity
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
	if status == "INVOKE_DUPLICITY_MOVEMENT" then
		Osi.RemoveStatus(character,"INVOKE_DUPLICITY_MOVEMENT")
		DelayedCall(1000, function ()
			Osi.ApplyStatus(character,"INVOKE_DUPLICITY_MOVEMENT_2",60.0,1,character)
		end)
	end
end)

local signatureSpells = {
  Target_AnimateDead = "SIGNATURESPELLS_ANIMATE_DEAD",
  Shout_AshardalonsStride = "SIGNATURESPELLS_ASHARDALONS_STRIDE",
  Target_BestowCurse = "SIGNATURESPELLS_BESTOW_CURSE",
  Shout_Blink = "SIGNATURESPELLS_BLINK",
  Target_Catnap = "SIGNATURESPELLS_CATNAP",
  Target_Counterspell = "SIGNATURESPELLS_COUNTERSPELL",
  Target_EnemiesAbound = "SIGNATURESPELLS_ENEMIES_ABOUND",
  Target_EruptingEarth = "SIGNATURESPELLS_ERUPTING_EARTH",
  Zone_Fear = "SIGNATURESPELLS_FEAR",
  Target_FeignDeath = "SIGNATURESPELLS_FEIGN_DEATH",
  Projectile_Fireball = "SIGNATURESPELLS_FIREBALL",
  Target_FlameArrows = "SIGNATURESPELLS_FLAME_ARROWS",
  Target_Fly = "SIGNATURESPELLS_FLY",
  Target_GaseousForm = "SIGNATURESPELLS_GASEOUS_FORM",
  Target_GlyphOfWarding = "SIGNATURESPELLS_GLYPH_OF_WARDING",
  Target_Haste = "SIGNATURESPELLS_HASTE",
  Target_HypnoticPattern = "SIGNATURESPELLS_HYPNOTIC_PATTERN",
  Target_IntellectFortress = "SIGNATURESPELLS_INTELLECT_FORTRESS",
  Target_LifeTransference = "SIGNATURESPELLS_LIFE_TRANSFERENCE",
  Zone_LightningBolt = "SIGNATURESPELLS_LIGHTNING_BOLT",
  Projectile_MinuteMeteors = "SIGNATURESPELLS_MINUTE_METEORS",
  Target_Nondetection = "SIGNATURESPELLS_NONDETECTION",
  Target_ProtectionFromEnergy = "SIGNATURESPELLS_PROTECTION_FROM_ENERGY",
  Target_RemoveCurse = "SIGNATURESPELLS_REMOVE_CURSE",
  Target_SleetStorm = "SIGNATURESPELLS_SLEET_STORM",
  Target_Slow = "SIGNATURESPELLS_SLOW",
  Target_SpeakWithDead = "SIGNATURESPELLS_SPEAK_WITH_DEAD",
  Shout_SpiritShroud = "SIGNATURESPELLS_SPIRIT_SHROUD",
  Target_StinkingCloud = "SIGNATURESPELLS_STINKING_CLOUD",
  Target_SummonShadowspawn = "SIGNATURESPELLS_SUMMON_SHADOWSPAWN",
  Teleportation_ThunderStep = "SIGNATURESPELLS_THUNDER_STEP",
  Target_VampiricTouch = "SIGNATURESPELLS_VAMPIRIC_TOUCH"
}

-- Signature Spells Passive
Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(level, _)
	if level ~= "SYS_CC_I" then
        local party = Osi.DB_Players:Get(nil)
        for _,p in pairs(party) do
			if Osi.IsTagged(p[1],"WIZARD_6fe3ae27-dc6c-4fc9-9245-710c790c396c") == 1 and Osi.HasPassive(p[1],"SignatureSpells") == 1 then
				for spell,status in pairs(signatureSpells) do
					if Osi.HasSpell(p[1],spell) == 1 and Osi.HasActiveStatus(p[1],status) == 0 then
						Osi.ApplyStatus(p[1],status,-1.0,1,p[1])
					end
				end
			end
        end
	end
end)

-- Signature Spells Leveling Up
Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(character)
	if Osi.IsTagged(character,"WIZARD_6fe3ae27-dc6c-4fc9-9245-710c790c396c") == 1 then
		for spell,status in pairs(signatureSpells) do
			if Osi.HasSpell(character,spell) == 1 and Osi.HasActiveStatus(character,status) == 0 then
				Osi.ApplyStatus(character,status,-1.0,1,character)
			end
		end
	end
end)

-- Signature Spells Status Applied
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(character, status, causee, _)
	if Osi.IsTagged(character,"WIZARD_6fe3ae27-dc6c-4fc9-9245-710c790c396c") == 1 then
		for spell,status in pairs(signatureSpells) do
			if Osi.HasSpell(character,spell) == 1 and Osi.HasActiveStatus(character,status) == 0 then
				Osi.ApplyStatus(character,status,-1.0,1,character)
			end

			if Osi.HasSpell(character,spell) == 0 and Osi.HasActiveStatus(character,status) == 1 then
				Osi.RemoveStatus(character,status)
			end
		end
	end
end)

--[[local WeaponPropertyBitFlags = {
    Light = 1,
    Ammunition = 2,
    Finesse = 4,
    Heavy = 8,
    Loading = 16,
    Range = 32,
    Reach = 64,
    Lance = 128,
    Net = 256,
    Thrown = 512,
    Twohanded = 1024,
    Versatile = 2048,
    Melee = 4096,
    Dippable = 8192,
    Torch = 16384,
    NoDualWield = 32768,
    Magical = 65536,
    NeedDualWieldingBoost = 131072,
    NotSheathable = 262144,
    Unstowable = 524288,
    AddToHotBar = 1048576
}

local ProficiencyGroupBitFlags = {
    Battleaxes = 1,
    Clubs = 2,
    Daggers = 4,
    Darts = 8,
    Flails = 16,
    Glaives = 32,
    Greataxes = 64,
    Greatclubs = 128,
    Greatswords = 256,
    Halberds = 512,
    HandCrossbows = 1024,
    Handaxes = 2048,
    HeavyArmor = 4096,
    HeavyCrossbows = 8192,
    Javelins = 16384,
    LightArmor = 32768,
    LightCrossbows = 65536,
    LightHammers = 131072,
    Longbows = 262144,
    Longswords = 524288,
    Maces = 1048576,
    MartialWeapons = 2097152,
    Mauls = 4194304,
    MediumArmor = 8388608,
    Morningstars = 16777216,
    Pikes = 33554432,
    Quarterstaffs = 67108864,
    Rapiers = 134217728,
    Scimitars = 268435456,
    Shields = 536870912,
    Shortbows = 1073741824,
    Shortswords = 2147483648,
    Sickles = 4294967296,
    SimpleWeapons = 8589934592,
    Slings = 17179869184,
    Spears = 34359738368,
    Tridents = 68719476736,
    Warhammers = 137438953472,
    Warpicks = 274877906944,
    MusicalInstrument = 549755813888
}

function DedicatedWeapon(weapon, wielder)
    local proficiencyGroups = Ext.Entity.Get(weapon).ProficiencyGroup.Flags
    local weaponProperties = Ext.Entity.Get(weapon).Weapon.WeaponProperties
			
    if proficiencyGroups and ProficiencyGroupBitFlags["Shortswords"] == ProficiencyGroupBitFlags["Shortswords"] or (proficiencyGroups & ProficiencyGroupBitFlags["SimpleWeapons"] == ProficiencyGroupBitFlags["SimpleWeapons"] and weaponProperties and WeaponPropertyBitFlags["Heavy"] == 0) then
--        _P("Monk Weapon")
        return true
    else
--        Ext.Utils.PrintWarning("Not Monk Weapon")
        return false
    end
end

Dedicated Weapon Adjustment
Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(character)
	if IsTagged(character,"MONK_e1e460bb-d0ae-4452-8529-c9e176558731") == 1 then
		Osi.IterateInventory(character,"CheckMonkWeapons","CompleteMonkWeaponCheck")
	end
end)

-- D10 Martial Arts Inventory Check
Ext.Osiris.RegisterListener("EntityEvent", 2, "after", function(item, event)
	if event == "CheckMonkWeapons" and Osi.IsWeapon(item) == 1 then
		local character = Osi.GetInventoryOwner(item)
		if DedicatedWeapon(item,character) ~= nil and DedicatedWeapon(item,character) == true and Osi.HasActiveStatus(item,"DEDICATED_WEAPON") == 1 then
			for _,weaponability in pairs(Ext.Entity.Get(item).Weapon.Rolls) do
				for _,dice in pairs(weaponability) do
					for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
						if dice.DiceValue == "D4" and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 4 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D6") == 0 then
							Osi.ApplyStatus(item,"DEDICATED_WEAPON_D6",-1.0,1,character)
						elseif (dice.DiceValue == "D4" or dice.DiceValue == "D6") and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 10 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D8") == 0 then
							Osi.ApplyStatus(item,"DEDICATED_WEAPON_D8",-1.0,1,character)
						elseif (dice.DiceValue == "D4" or dice.DiceValue == "D6" or dice.DiceValue == "D8") and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 16 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D10") == 0 then
							Osi.ApplyStatus(item,"DEDICATED_WEAPON_D10",-1.0,1,character)
						end
					end
				end
			end
		end
	end
end)

-- Dedicated Weapon Status
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(item, status, character, _)
	if status == "DEDICATED_WEAPON" and Osi.IsWeapon(item) == 1 and character ~= nil then
		for _,weaponability in pairs(Ext.Entity.Get(item).Weapon.Rolls) do
			for _,dice in pairs(weaponability) do
				for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
					if dice.DiceValue == "D4" and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 4 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D6") == 0 then
						Osi.ApplyStatus(item,"DEDICATED_WEAPON_D6",-1.0,1,character)
					elseif (dice.DiceValue == "D4" or dice.DiceValue == "D6") and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 10 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D8") == 0 then
						Osi.ApplyStatus(item,"DEDICATED_WEAPON_D8",-1.0,1,character)
					elseif (dice.DiceValue == "D4" or dice.DiceValue == "D6" or dice.DiceValue == "D8") and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 16 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D10") == 0 then
						Osi.ApplyStatus(item,"DEDICATED_WEAPON_D10",-1.0,1,character)
					end
				end
			end
		end
	end
end)

-- Dedicated Weapon Equip
Ext.Osiris.RegisterListener("Equipped", 2, "after", function(item, character)
	if Osi.HasActiveStatus(item,"DEDICATED_WEAPON") == 1 then
		if DedicatedWeapon(item,character) == true then
			for _,weaponability in pairs(Ext.Entity.Get(item).Weapon.Rolls) do
				for _,dice in pairs(weaponability) do
					for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
						if dice.DiceValue == "D4" and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 4 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D6") == 0 then
							Osi.ApplyStatus(item,"DEDICATED_WEAPON_D6",-1.0,1,character)
						elseif (dice.DiceValue == "D4" or dice.DiceValue == "D6") and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 10 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D8") == 0 then
							Osi.ApplyStatus(item,"DEDICATED_WEAPON_D8",-1.0,1,character)
						elseif (dice.DiceValue == "D4" or dice.DiceValue == "D6" or dice.DiceValue == "D8") and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 16 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D10") == 0 then
							Osi.ApplyStatus(item,"DEDICATED_WEAPON_D10",-1.0,1,character)
						end
					end
				end
			end
		end
	end
end)

-- Dedicated Weapon or D10 Martial Arts Inventory
Ext.Osiris.RegisterListener("AddedTo", 3, "after", function(item, character, _)
	if Osi.HasActiveStatus(item,"DEDICATED_WEAPON") == 1 then
		if DedicatedWeapon(item,character) == true then
			for _,weaponability in pairs(Ext.Entity.Get(item).Weapon.Rolls) do
				for _,dice in pairs(weaponability) do
					for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
						if dice.DiceValue == "D4" and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 4 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D6") == 0 then
							Osi.ApplyStatus(item,"DEDICATED_WEAPON_D6",-1.0,1,character)
						elseif (dice.DiceValue == "D4" or dice.DiceValue == "D6") and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 10 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D8") == 0 then
							Osi.ApplyStatus(item,"DEDICATED_WEAPON_D8",-1.0,1,character)
						elseif (dice.DiceValue == "D4" or dice.DiceValue == "D6" or dice.DiceValue == "D8") and class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 16 and Osi.HasActiveStatus(item,"DEDICATED_WEAPON_D10") == 0 then
							Osi.ApplyStatus(item,"DEDICATED_WEAPON_D10",-1.0,1,character)
						end
					end
				end
			end
		end
	end
end)

-- Dedicated Weapon or Monk Weapon Drop/Removal
Ext.Osiris.RegisterListener("RemovedFrom", 2, "after", function(item, character)
	if Osi.HasActiveStatus(item,"DEDICATED_WEAPON") == 1 then
		Osi.RemoveStatus(item,"DEDICATED_WEAPON_D6")
		Osi.RemoveStatus(item,"DEDICATED_WEAPON_D8")
		Osi.RemoveStatus(item,"DEDICATED_WEAPON_D10")
	end
end)--]]

local invisStatuses = {
  INVISIBLE = "INVISIBLE_SEEN",
  INVISIBLE_MAGEHAND = "INVISIBLE_MAGEHAND_SEEN",
  INVISIBILITY = "INVISIBILITY_SEEN",
  ONE_WITH_SHADOWS = "ONE_WITH_SHADOWS_SEEN",
  POTION_OF_INVISIBILITY = "POTION_OF_INVISIBILITY_SEEN",
  CLOAK_OF_SHADOWS = "CLOAK_OF_SHADOWS_SEEN",
  CLOAK_OF_SHADOWS_MONK = "CLOAK_OF_SHADOWS_MONK_SEEN",
  UMBRAL_CLOAK = "UMBRAL_CLOAK_SEEN",
  GREATER_INVISIBILITY = "GREATER_INVISIBILITY_SEEN",
  SHADOWBLEND = "SHADOWBLEND_SEEN",
  INVISIBILITY_SHADARKAI_GLOOMWEAVER = "INVISIBILITY_SHADARKAI_GLOOMWEAVER_SEEN",
  HIDE_IN_PLAIN_SIGHT = "HIDE_IN_PLAIN_SIGHT_SEEN",
  MISTY_ESCAPE_INVISIBLE = "MISTY_ESCAPE_INVISIBLE_SEEN",
  INVISIBILITY_PANTHER = "INVISIBILITY_PANTHER_SEEN",
  SHROUD_SELF = "SHROUD_SELF_SEEN",
  SUPREME_SNEAK = "SUPREME_SNEAK_SEEN",
  LOW_POLTERGEIST_INVISIBLE = "LOW_POLTERGEIST_INVISIBLE_SEEN"
}

-- Blindsense & Feral Senses Invisibility Source
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
	if Osi.HasActiveStatusWithGroup(character, "SG_Invisible") == 1 then
		Osi.SetVarObject(character,"BlindsenseSource",causee)
		Osi.SetVarObject(character,"FeralSensesSource",causee)
    end
end)

-- Blindsense & Feral Senses Setup
Ext.Osiris.RegisterListener("GainedControl", 1, "before", function (character)
	if Osi.HasActiveStatus(character,"BLINDSENSE_OWNER") == 1 then
		Osi.ApplyStatus(character,"BLINDSENSE_AURA",6.0,1)
	end
	
	if Osi.HasActiveStatus(character,"FERAL_SENSES_OWNER") == 1 then
		Osi.ApplyStatus(character,"FERAL_SENSES_AURA",6.0,1)
	end
	
	if Osi.HasActiveStatus(character,"BLINDSENSE_OWNER") == 0 then
		Osi.RemoveStatus(character,"BLINDSENSE_REMOVAL")
    end

	if Osi.HasActiveStatus(character,"FERAL_SENSES_OWNER") == 0 then
		Osi.RemoveStatus(character,"FERAL_SENSES_REMOVAL")
    end
end)

-- Blindsense & Feral Senses Application
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, _, _)
	if status == "BLINDSENSE_REMOVAL" or status == "FERAL_SENSES_REMOVAL" then
		for invis, seeninvis in pairs(invisStatuses) do
			if Osi.HasActiveStatus(character,invis) == 1 then
				local turns = Osi.GetStatusTurns(character,invis)
				Osi.ApplyStatus(character,seeninvis,turns*6,1,character)
			end
		end
    end
end)

-- Blindsense & Feral Senses Removal
Ext.Osiris.RegisterListener("StatusRemoved", 4, "after", function (character, status, _, _)
	if status == "BLINDSENSE_REMOVAL" or status == "FERAL_SENSES_REMOVAL" then
		for invis, seeninvis in pairs(invisStatuses) do
			if Osi.HasActiveStatus(character,seeninvis) == 1 then
				local turns = Osi.GetStatusTurns(character,seeninvis)
				Osi.ApplyStatus(character,invis,turns*6,1,character)
			end
		end
    end
end)

-- Master's Flourish
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(character, status, causee, _)
	if status == "MASTERS_FLOURISH" then
		local pbfdef = Ext.Stats.Get("Projectile_BladeFlourish_Defensive")
		local pbfmob = Ext.Stats.Get("Projectile_BladeFlourish_Mobile")
		local pbfssh = Ext.Stats.Get("Projectile_BladeFlourish_Slashing")
		local tbfdef = Ext.Stats.Get("Target_BladeFlourish_Defensive")
		local tbfmob = Ext.Stats.Get("Target_BladeFlourish_Mobile")
		local zbfssh = Ext.Stats.Get("Zone_BladeFlourish_Slashing")
		pbfdef.TooltipDamageList = "DealDamage(MainRangedWeapon+1d6, MainWeaponDamageType)"
		pbfmob.TooltipDamageList = "DealDamage(MainRangedWeapon+1d6, MainWeaponDamageType)"
		pbfssh.TooltipDamageList = "DealDamage(MainRangedWeapon+1d6, MainWeaponDamageType)"
		tbfdef.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d6, MainWeaponDamageType)"
		tbfmob.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d6, MainWeaponDamageType)"
		zbfssh.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d6, MainWeaponDamageType)"
		pbfdef.HitCosts = ""
		pbfmob.HitCosts = ""
		pbfssh.HitCosts = ""
		tbfdef.HitCosts = ""
		tbfmob.HitCosts = ""
		zbfssh.HitCosts = ""
		pbfdef:Sync()
		pbfmob:Sync()
		pbfssh:Sync()
		tbfdef:Sync()
		tbfmob:Sync()
		zbfssh:Sync()
	end
end)

-- Master's Flourish Removal
Ext.Osiris.RegisterListener("StatusRemoved", 4, "after", function(character, status, causee, _)
	if status == "MASTERS_FLOURISH" then
		local pbfdef = Ext.Stats.Get("Projectile_BladeFlourish_Defensive")
		local pbfmob = Ext.Stats.Get("Projectile_BladeFlourish_Mobile")
		local pbfssh = Ext.Stats.Get("Projectile_BladeFlourish_Slashing")
		local tbfdef = Ext.Stats.Get("Target_BladeFlourish_Defensive")
		local tbfmob = Ext.Stats.Get("Target_BladeFlourish_Mobile")
		local zbfssh = Ext.Stats.Get("Zone_BladeFlourish_Slashing")
		pbfdef.TooltipDamageList = "DealDamage(MainRangedWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		pbfmob.TooltipDamageList = "DealDamage(MainRangedWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		pbfssh.TooltipDamageList = "DealDamage(MainRangedWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		tbfdef.TooltipDamageList = "DealDamage(MainMeleeWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		tbfmob.TooltipDamageList = "DealDamage(MainMeleeWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		zbfssh.TooltipDamageList = "DealDamage(MainMeleeWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		pbfdef.HitCosts = "BardicInspiration:1"
		pbfmob.HitCosts = "BardicInspiration:1"
		pbfssh.HitCosts = "BardicInspiration:1"
		tbfdef.HitCosts = "BardicInspiration:1"
		tbfmob.HitCosts = "BardicInspiration:1"
		zbfssh.HitCosts = "BardicInspiration:1"
		pbfdef:Sync()
		pbfmob:Sync()
		pbfssh:Sync()
		tbfdef:Sync()
		tbfmob:Sync()
		zbfssh:Sync()
	end
end)

-- Master's Flourish Adjustments
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function(character)
	if Osi.HasActiveStatus(character,"MASTERS_FLOURISH") == 1 then
		local pbfdef = Ext.Stats.Get("Projectile_BladeFlourish_Defensive")
		local pbfmob = Ext.Stats.Get("Projectile_BladeFlourish_Mobile")
		local pbfssh = Ext.Stats.Get("Projectile_BladeFlourish_Slashing")
		local tbfdef = Ext.Stats.Get("Target_BladeFlourish_Defensive")
		local tbfmob = Ext.Stats.Get("Target_BladeFlourish_Mobile")
		local zbfssh = Ext.Stats.Get("Zone_BladeFlourish_Slashing")
		pbfdef.TooltipDamageList = "DealDamage(MainRangedWeapon+1d6, MainWeaponDamageType)"
		pbfmob.TooltipDamageList = "DealDamage(MainRangedWeapon+1d6, MainWeaponDamageType)"
		pbfssh.TooltipDamageList = "DealDamage(MainRangedWeapon+1d6, MainWeaponDamageType)"
		tbfdef.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d6, MainWeaponDamageType)"
		tbfmob.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d6, MainWeaponDamageType)"
		zbfssh.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d6, MainWeaponDamageType)"
		pbfdef.HitCosts = ""
		pbfmob.HitCosts = ""
		pbfssh.HitCosts = ""
		tbfdef.HitCosts = ""
		tbfmob.HitCosts = ""
		zbfssh.HitCosts = ""
		pbfdef:Sync()
		pbfmob:Sync()
		pbfssh:Sync()
		tbfdef:Sync()
		tbfmob:Sync()
		zbfssh:Sync()
	elseif Osi.HasActiveStatus(character,"MASTERS_FLOURISH") == 0 then
		local pbfdef = Ext.Stats.Get("Projectile_BladeFlourish_Defensive")
		local pbfmob = Ext.Stats.Get("Projectile_BladeFlourish_Mobile")
		local pbfssh = Ext.Stats.Get("Projectile_BladeFlourish_Slashing")
		local tbfdef = Ext.Stats.Get("Target_BladeFlourish_Defensive")
		local tbfmob = Ext.Stats.Get("Target_BladeFlourish_Mobile")
		local zbfssh = Ext.Stats.Get("Zone_BladeFlourish_Slashing")
		pbfdef.TooltipDamageList = "DealDamage(MainRangedWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		pbfmob.TooltipDamageList = "DealDamage(MainRangedWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		pbfssh.TooltipDamageList = "DealDamage(MainRangedWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		tbfdef.TooltipDamageList = "DealDamage(MainMeleeWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		tbfmob.TooltipDamageList = "DealDamage(MainMeleeWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		zbfssh.TooltipDamageList = "DealDamage(MainMeleeWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		pbfdef.HitCosts = "BardicInspiration:1"
		pbfmob.HitCosts = "BardicInspiration:1"
		pbfssh.HitCosts = "BardicInspiration:1"
		tbfdef.HitCosts = "BardicInspiration:1"
		tbfmob.HitCosts = "BardicInspiration:1"
		zbfssh.HitCosts = "BardicInspiration:1"
		pbfdef:Sync()
		pbfmob:Sync()
		pbfssh:Sync()
		tbfdef:Sync()
		tbfmob:Sync()
		zbfssh:Sync()
	end
end)

-- Panther Level Up
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(character, status, causee, _)
	if Osi.HasActiveStatus(character,"RANGERS_COMPANION_PANTHER") == 1 and (status == "PANTHER_HP_4" or status == "PANTHER_HP_5" or status == "PANTHER_HP_6" or status == "PANTHER_HP_7" or status == "PANTHER_HP_8" or status == "PANTHER_HP_9" or status == "PANTHER_HP_10" or status == "PANTHER_HP_11" or status == "PANTHER_HP_12" or status == "PANTHER_HP_13" or status == "PANTHER_HP_14" or status == "PANTHER_HP_15" or status == "PANTHER_HP_16" or status == "PANTHER_HP_17" or status == "PANTHER_HP_18" or status == "PANTHER_HP_19" or status == "PANTHER_HP_20") then
		local owner = Osi.CharacterGetOwner(character)
		local summonlevel = Osi.GetLevel(character)
		for _,ownerlevel in pairs(Ext.Entity.Get(owner).Classes.Classes) do
			if ownerlevel.SubClassUUID == "6fd9547d-cc28-400e-bfa9-3a85baa70f24" and summonlevel ~= ownerlevel.Level then
				local panther = Ext.Entity.Get(character)
				for _,levels in pairs(Ext.Entity.Get(character).Classes.Classes) do
					panther.AvailableLevel.Level = ownerlevel.Level
					panther.EocLevel.Level = ownerlevel.Level
					levels.Level = ownerlevel.Level
					panther:Replicate("AvailableLevel")
					panther:Replicate("EocLevel")
					panther:Replicate("Classes")
				end
			end
		end	
	end

	if Osi.HasActiveStatus(character,"RANGERS_COMPANION_PANTHER") == 1 and status ~= "EXP_DISTRACT_SPELL" then
		if Ext.Mod.IsModLoaded("f19c68ed-70be-4c3d-b610-e94afc5c5103") then
			if Osi.HasActiveStatus(character,"EXP_DISTRACT_SPELL") == 0 then
				Osi.ApplyStatus(character,"EXP_DISTRACT_SPELL",-1.0,1)
			end	
		else
			return
		end
	end
end)

-- Grant Divine Strike
Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(level, _)
    if level ~= "SYS_CC_I" then
		local party = Osi.DB_Players:Get(nil)
		for _,p in pairs(party) do
			if IsTagged(p[1],"CLERIC_1671b4bf-4f47-4bb7-9cb9-80bb1f6009d5") == 1 then
				for _,cleric in pairs(Ext.Entity.Get(p[1]).Classes.Classes) do
					if cleric.SubClassUUID == "4b5da2f5-b999-4623-8bff-a63df5560fb3" and (Osi.HasPassive(p[1],"Divine_Strike_Life_Toggle") == 1 or Osi.HasPassive(p[1],"Divine_Strike_Life_Toggle_2") == 1) and Osi.HasSpell(p[1],"Target_DivineStrike_Life_Container") == 0 then
						Osi.AddPassive(p[1],"Divine_Strike_Life_WeaponAttack")
					elseif cleric.SubClassUUID == "6dec76d0-df22-411c-8a78-3d6fb843ae50" and (Osi.HasPassive(p[1],"Divine_Strike_Nature_Toggle") == 1 or Osi.HasPassive(p[1],"Divine_Strike_Nature_Toggle_2") == 1) and Osi.HasSpell(p[1],"Target_DivineStrike_Nature_Container") == 0 then
						Osi.AddPassive(p[1],"Divine_Strike_Nature_WeaponAttack")
					elseif cleric.SubClassUUID == "89bacf1b-8f15-4972-ada7-bf59c7c78441" and (Osi.HasPassive(p[1],"Divine_Strike_Tempest_Toggle") == 1 or Osi.HasPassive(p[1],"Divine_Strike_Tempest_Toggle_2") == 1) and Osi.HasSpell(p[1],"Divine_Strike_Tempest_WeaponAttack") == 0 then
						Osi.AddPassive(p[1],"Divine_Strike_Tempest_WeaponAttack")
					elseif cleric.SubClassUUID == "b9ccf90e-b35b-4b73-b896-8ed2d32ae8c6" and (Osi.HasPassive(p[1],"Divine_Strike_War_Toggle") == 1 or Osi.HasPassive(p[1],"Divine_Strike_War_Toggle_2") == 1) and Osi.HasSpell(p[1],"Divine_Strike_War_WeaponAttack") == 0 then
						Osi.AddPassive(p[1],"Divine_Strike_War_WeaponAttack")
					elseif cleric.SubClassUUID == "f013d01b-3310-43f7-81bf-a51130442b5e" and (Osi.HasPassive(p[1],"Divine_Strike_Trickery_Toggle") == 1 or Osi.HasPassive(p[1],"Divine_Strike_Trickery_Toggle_2") == 1) and Osi.HasSpell(p[1],"Target_DivineStrike_Trickery_Container") == 0 then
						Osi.AddPassive(p[1],"Divine_Strike_Trickery_WeaponAttack")
					end
				end
			end
		end
    end
end)

-- Nature's Veil
Ext.Osiris.RegisterListener("RespecCompleted", 1, "after", function(character)
	DelayedCall(500, function ()
		local resource = Osi.GetActionResourceValuePersonal(character, "NaturesVeil", 0)
		if resource > 0 and Osi.HasPassive(character,"NaturesVeil") == 0 then
		Osi.ApplyStatus(character,"NATURES_VEIL_RESOURCE_REMOVAL",6.0,1)
		end
	end)
end)

-- Quivering Palm
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(character, status, causee, _)
	if status == "QUIVERING_PALM_HP" then
		Osi.SetHitpoints(character,0)
	end
end)

local spellMasteryList = {
  Shout_AbsorbElements = "SPELL_MASTERY_ABSORB_ELEMENTS",
  Zone_ArcticBreath = "SPELL_MASTERY_ARCTIC_BREATH",
  Target_BladeMirage = "SPELL_MASTERY_BLADE_MIRAGE",
  Zone_BurningHands = "SPELL_MASTERY_BURNING_HANDS",
  Throw_Catapult = "SPELL_MASTERY_CATAPULT",
  Target_CauseFear = "SPELL_MASTERY_CAUSE_FEAR",
  Target_CharmPerson = "SPELL_MASTERY_CHARM_PERSON",
  Projectile_ChromaticOrb = "SPELL_MASTERY_CHROMATIC_ORB",
  Zone_ColorSpray = "SPELL_MASTERY_COLOR_SPRAY",
  Zone_CrashingWave = "SPELL_MASTERY_CRASHING_WAVE",
  Shout_DetectMagic = "SPELL_MASTERY_DETECT_MAGIC",
  Shout_DisguiseSelf = "SPELL_MASTERY_DISGUISE_SELF",
  Shout_EarthTremor = "SPELL_MASTERY_EARTH_TREMOR",
  Target_Entomb = "SPELL_MASTERY_ENTOMB",
  Shout_ExpeditiousRetreat = "SPELL_MASTERY_EXPEDITIOUS_RETREAT",
  Shout_FalseLife = "SPELL_MASTERY_FALSE_LIFE",
  Shout_FeatherFall = "SPELL_MASTERY_FEATHER_FALL",
  Target_FindFamiliar = "SPELL_MASTERY_FIND_FAMILIAR",
  Target_FogCloud = "SPELL_MASTERY_FOG_CLOUD",
  Zone_FrostFingers = "SPELL_MASTERY_FROST_FINGERS",
  Target_Grease = "SPELL_MASTERY_GREASE",
  Projectile_IceKnife = "SPELL_MASTERY_ICE_KNIFE",
  Target_Jump = "SPELL_MASTERY_JUMP",
  Target_Longstrider = "SPELL_MASTERY_LONGSTRIDER",
  Target_MageArmor = "SPELL_MASTERY_MAGE_ARMOR",
  Projectile_MagicMissile = "SPELL_MASTERY_MAGIC_MISSILE",
  Target_ProtectionFromEvilAndGood = "SPELL_MASTERY_PROTECTION_FROM_EVIL_AND_GOOD",
  Projectile_RayOfSickness = "SPELL_MASTERY_RAY_OF_SICKNESS",
  Shout_Shield_Wizard = "SPELL_MASTERY_SHIELD",
  Target_Sleep = "SPELL_MASTERY_SLEEP",
  Target_Snare = "SPELL_MASTERY_SNARE",
  Zone_TashasCausticBrew = "SPELL_MASTERY_TASHAS_CAUSTIC_BREW",
  Target_HideousLaughter = "SPELL_MASTERY_HIDEOUS_LAUGHTER",
  Zone_Thunderwave = "SPELL_MASTERY_THUNDERWAVE",
  Target_UnseenServant = "SPELL_MASTERY_UNSEEN_SERVANT",
  Projectile_WitchBolt = "SPELL_MASTERY_WITCH_BOLT",
  Zone_AganazzarsScorcher = "SPELL_MASTERY_AGANAZZARS_SCORCHER",
  Shout_AlterSelf = "SPELL_MASTERY_ALTER_SELF",
  Target_Blindness = "SPELL_MASTERY_BLINDNESS",
  Shout_Blur = "SPELL_MASTERY_BLUR",
  Target_BorrowedKnowledge = "SPELL_MASTERY_BORROWED_KNOWLEDGE",
  Target_CloudOfDaggers = "SPELL_MASTERY_CLOUD_OF_DAGGERS",
  Target_ContinualFlame = "SPELL_MASTERY_CONTINUAL_FLAME",
  Target_CrownOfMadness = "SPELL_MASTERY_CROWN_OF_MADNESS",
  Target_Darkness = "SPELL_MASTERY_DARKNESS",
  Target_Darkvision = "SPELL_MASTERY_DARKVISION",
  Shout_DetectThoughts = "SPELL_MASTERY_DETECT_THOUGHTS",
  Target_DragonsBreath = "SPELL_MASTERY_DRAGONS_BREATH",
  Target_DustDevil = "SPELL_MASTERY_DUST_DEVIL",
  Target_EnhanceAbility = "SPELL_MASTERY_ENHANCE_ABILITY",
  Target_EnlargeReduce = "SPELL_MASTERY_ENLARGE_REDUCE",
  Target_FlamingSphere = "SPELL_MASTERY_FLAMING_SPHERE",
  Target_FlockOfFamiliars = "SPELL_MASTERY_FLOCK_OF_FAMILIARS",
  Zone_GustOfWind = "SPELL_MASTERY_GUST_OF_WIND",
  Target_HoldPerson = "SPELL_MASTERY_HOLD_PERSON",
  Target_Invisibility = "SPELL_MASTERY_INVISIBILITY",
  Shout_KineticJaunt = "SPELL_MASTERY_KINETIC_JAUNT",
  Target_Knock = "SPELL_MASTERY_KNOCK",
  Target_Levitate = "SPELL_MASTERY_LEVITATE",
  Target_MagicWeapon = "SPELL_MASTERY_MAGIC_WEAPON",
  Target_MaximiliansEarthenGrasp = "SPELL_MASTERY_MAXIMILLIANS_EARTHEN_GRASP",
  Projectile_AcidArrow = "SPELL_MASTERY_ACID_ARROW",
  Target_MindSpike = "SPELL_MASTERY_MIND_SPIKE",
  Shout_MirrorImage = "SPELL_MASTERY_MIRROR_IMAGE",
  Target_MistyStep = "SPELL_MASTERY_MISTY_STEP",
  Target_NathairsMischief = "SPELL_MASTERY_NATHAIRS_MISCHIEF",
  Target_PhantasmalForce = "SPELL_MASTERY_PHANTASMAL_FORCE",
  Projectile_RayOfEnfeeblement = "SPELL_MASTERY_RAY_OF_ENFEEBLEMENT",
  Zone_RimesBindingIce = "SPELL_MASTERY_RIMES_BINDING_ICE",
  Projectile_ScorchingRay = "SPELL_MASTERY_SCORCHING_RAY",
  Shout_ShadowBlade = "SPELL_MASTERY_SHADOW_BLADE",
  Target_Shatter = "SPELL_MASTERY_SHATTER",
  Target_SnillocsSnowballStorm = "SPELL_MASTERY_SNILLOCS_SNOWBALLSTORM",
  Target_Suggestion = "SPELL_MASTERY_SUGGESTION",
  Target_TashasMindWhip = "SPELL_MASTERY_TASHAS_MIND_WHIP",
  Target_VortexWarp = "SPELL_MASTERY_VORTEX_WARP",
  Shout_WardingWind = "SPELL_MASTERY_WARDING_WIND",
  Target_Web = "SPELL_MASTERY_WEB",
  Target_WitherAndBloom = "SPELL_MASTERY_WITHER_AND_BLOOM"
}

-- Spell Mastery Leveling Up
Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(character)
	if Osi.IsTagged(character,"WIZARD_6fe3ae27-dc6c-4fc9-9245-710c790c396c") == 1 then
		Osi.ObjectTimerLaunch(character, "SpellMasteryLevelUp", 100, 0)
	end
end)

-- Spell Mastery Timer
Ext.Osiris.RegisterListener("ObjectTimerFinished", 2, "after", function(character, timer)
	if timer == "SpellMasteryLevelUp" then
		for spellname,statuses in pairs(spellMasteryList) do
			if Osi.HasSpell(character,spellname) == 1 and Osi.HasActiveStatus(character,statuses) == 0 then
				Osi.ApplyStatus(character,statuses,-1.0,1,character)
			end

			if Osi.HasSpell(character,spellname) == 0 and Osi.HasActiveStatus(character,statuses) == 1 then
				Osi.RemoveStatus(character,statuses)
			end
		end
	end
end)

-- Spell Mastery Status Applied
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(character, status, causee, _)
	if Osi.IsTagged(character,"WIZARD_6fe3ae27-dc6c-4fc9-9245-710c790c396c") == 1 then
		Osi.RealtimeObjectTimerLaunch(character, "SpellMasteryLevelUp", 1000)
	end
end)

-- Totemic Attunement Eagle
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(character, status, causee, _)
	if status == "TOTEMIC_ATTUNEMENT_EAGLE_TECHNICAL" then
		local movement = Osi.GetActionResourceValuePersonal(character, "Movement", 0)
		local spell = Ext.Stats.Get("Projectile_TotemicAttunement_Eagle")
		local str = Osi.IntegerToString(movement)
		spell.TargetRadius = str
		spell:Sync()
	end
end)

-- Totemic Attunement Eagle Movement
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(character, status, causee, _)
	if status == "TOTEMIC_ATTUNEMENT_EAGLE_MOVEMENT" then
		local movement = Osi.GetActionResourceValuePersonal(character, "Movement", 0)
		local spell = Ext.Stats.Get("Projectile_TotemicAttunement_Eagle")
		local str = Osi.IntegerToString(movement)
		spell.TargetRadius = str
		spell:Sync()
	end
end)

-- Tipsy Sway redirect credit DrKekyll and Sumradagnoth
local turnAgainstTheTideRedirectAttacker = ""
local turnAgainstTheTideRedirectSpell = ""
local hunterRanger = ""

Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "after", function(caster, target, spell, spellType, spellElement, storyActionID)
    if Osi.HasPassive(target, "StandAgainstTheTide") == 1 then
        turnAgainstTheTideRedirectAttacker = caster
        turnAgainstTheTideRedirectSpell = spell
        hunterRanger = target
    end
end)

Ext.Osiris.RegisterListener("ReactionInterruptUsed", 3, "after", function(object, reactionInterruptPrototypeId, isAutoTriggered)
    if reactionInterruptPrototypeId == "Interrupt_StandAgainstTheTide" then
		
        local caster = turnAgainstTheTideRedirectAttacker
        local spell = turnAgainstTheTideRedirectSpell
        local target = hunterRanger
        local targetTable = {}

        for _, character in pairs (Ext.Entity.GetAllEntitiesWithComponent("ServerCharacter")) do
            local characterUuid = character.Uuid.EntityUuid
            if Osi.HasActiveStatus(characterUuid, "STAND_AGAINST_THE_TIDE_REDIRECT_TARGET") == 1 and characterUuid ~= string.sub(caster, -36) and Osi.HasLineOfSight(target, characterUuid) == 1 then
                table.insert(targetTable, characterUuid)
           end
        end

        local newTarget = 1 + Osi.Random(#targetTable)
        if targetTable[newTarget] ~= nil then	
            DMDelayedCall(500, function() Osi.UseSpell(caster, spell, targetTable[newTarget])
            end)
        end
    end
end)

function DMDelayedCall(msDelay, func)
    local startTime = Ext.Utils.MonotonicTime()
    local handlerId;
    handlerId = Ext.Events.Tick:Subscribe(function()
        if (Ext.Utils.MonotonicTime() - startTime > msDelay) then
            Ext.Events.Tick:Unsubscribe(handlerId)
            func()
        end
    end) 
end

-- Beast Spells Preview Spell
Ext.Osiris.RegisterListener("StartedPreviewingSpell", 4, "before", function(character, spell, _, _)
	if (spell == "Shout_WildShape_Combat_Raven" or spell == "Shout_WildShape_Combat_DeepRothe" or spell == "Shout_WildShape_Combat_Bear_Polar" or spell == "Shout_WildShape_Combat_Cat" or spell == "Shout_WildShape_Combat_Wolf_Dire" or spell == "Shout_WildShape_Combat_Spider" or spell == "Shout_WildShape_Combat_Badger" or spell == "Shout_WildShape_Raven" or spell == "Shout_WildShape_Badger" or spell == "Shout_WildShape_Spider" or spell == "Shout_WildShape_Wolf_Dire" or spell == "Shout_WildShape_Cat" or spell == "Shout_WildShape_Bear_Polar" or spell == "Shout_WildShape_DeepRothe" or spell == "Shout_WildShape_Combat_Owlbear" or spell == "Shout_WildShape_Combat_Myrmidon_Water" or spell == "Shout_WildShape_Combat_Myrmidon_Fire" or spell == "Shout_WildShape_Combat_Myrmidon_Air" or spell == "Shout_WildShape_Combat_Myrmidon_Earth" or spell == "Shout_WildShape_Combat_Dilophosaurus" or spell == "Shout_Wildshape_Combat_Panther" or spell == "Shout_Wildshape_Combat_SaberTooth_Tiger" or spell == "Shout_Wildshape_Panther" or spell == "Shout_Wildshape_SaberTooth_Tiger") and Osi.HasPassive(character,"BeastSpells") == 1 and HasActiveStatus(character,"BEAST_SPELLS_TOGGLE") == 1 then
		for _, name in pairs(Ext.Stats.GetStats("StatusData")) do
		local polystatus = Ext.Stats.Get(name)
			if polystatus.StatusType == "POLYMORPHED" then
				local flags = polystatus.StatusGroups
				for _, sg in pairs(flags) do
					if sg == "SG_Polymorph_BeastShape" then
						if polystatus.Rules == "936d22ac-fa88-4c99-8a6c-12c08ab577a2" then
							polystatus.Rules = "63ccb354-3d6d-4ae3-9925-f20d31b2069d"
							polystatus:Sync()
						end

						if polystatus.Rules == "9c580a1d-dab9-4b17-b0da-b16c7d7360e0" then
							polystatus.Rules = "94144eb3-5cd9-42fb-a67e-c52dceb87a2d"
							polystatus:Sync()
						end
					end
				end
			end
--[[		local myrmidon = Ext.StaticData.Get("936d22ac-fa88-4c99-8a6c-12c08ab577a2","ShapeshiftRule")
		local beast = Ext.StaticData.Get("9c580a1d-dab9-4b17-b0da-b16c7d7360e0","ShapeshiftRule")
		if myrmidon.RemovePrevSpells == true then
			myrmidon.RemovePrevSpells=false
			myrmidon.WildShapeHotBar=false
			myrmidon.SpeakingCapabilities=0
		end

		if beast.RemovePrevSpells == true then
			beast.RemovePrevSpells=false
			beast.WildShapeHotBar=false
			beast.SpeakingCapabilities=0--]]
		end
	end
end)

-- Beast Spells Control
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function (character)
	if Osi.HasPassive(character,"BeastSpells") == 0 then
		for _, name in pairs(Ext.Stats.GetStats("StatusData")) do
		local polystatus = Ext.Stats.Get(name)
			if polystatus.StatusType == "POLYMORPHED" then
				if polystatus.Rules == "63ccb354-3d6d-4ae3-9925-f20d31b2069d" then
					polystatus.Rules = "936d22ac-fa88-4c99-8a6c-12c08ab577a2"
					polystatus:Sync()
				end

				if polystatus.Rules == "94144eb3-5cd9-42fb-a67e-c52dceb87a2d" then
					polystatus.Rules = "9c580a1d-dab9-4b17-b0da-b16c7d7360e0"
					polystatus:Sync()
				end
			end
		end
	end
end)

-- Bladesinger
Ext.Osiris.RegisterListener("LeveledUp", 1, "before", function(character)
	if Osi.IsTagged(character,"WIZARD_6fe3ae27-dc6c-4fc9-9245-710c790c396c") == 1 then
		Osi.ObjectTimerLaunch(character, "BladesingerWeapon", 1000, 0)
	end
end)

local bladesongWeaponTags = {
  Quarterstaffs = "WPN_STAVE_00a09d42-c23c-48b0-90cc-c67f6cbd9e3d",
  Handaxes = "WPN_HANDAXE_09dd1e1e-6d9f-4cc6-b514-68e981c80543",
  Warhammers = "WPN_WARHAMMER_1dff197e-b74c-4173-94d3-e1323239556c",
  Flails = "WPN_FLAIL_5d7b1304-6d20-4d60-ba1b-0fbb491bfc18",
  Clubs = "WPN_CLUB_9b333d67-365f-41fa-80b2-08e86588e9ac",
  Morningstars = "WPN_MORNINGSTAR_aa4cfcea-aee8-44b9-a460-e7231df796b1",
  Javelins = "WPN_JAVELIN_b6e3bfa1-2c63-404f-becb-21d047aacce1",
  Maces = "WPN_MACE_c29fc6ce-0482-420d-a839-41a0bab95c2d",
  Tridents = "WPN_TRIDENT_c808f076-4a0f-422a-97db-e985ce35f3f9",
  LightHammers = "WPN_LIGHT_HAMMER_edc46cc0-25d0-4da9-bfcb-edba239edcce",
  WarPicks = "WPN_WAR_PICK_eed87cdb-c5ee-45c2-9a5a-6949dce87a1e",
  Daggers = "WPN_DAGGER_7490e5d0-d346-4b0e-80c6-04e977160863",
  Sickles = "WPN_SICKLE_bfdc63bd-b8f6-4eac-9363-0c71882ff46f",
  Shortswords = "WPN_SHORTSWORD_c826fd1e-4780-43d4-b49b-87f30c060fe6",
  Longswords = "WPN_LONGSWORD_96a99a42-ec5d-4081-9d62-c9e3f0057136",
  Rapiers = "WPN_RAPIER_aeaf4e95-38d7-45ec-8900-40bc9e6106b0",
  Scimitars = "WPN_SCIMITAR_206f9701-7b24-4eaf-9ac4-a47746c251e2",
  Battleaxes = "WPN_BATTLEAXE_7609654e-b213-410d-b08f-6d2930da6411"
}

-- Bladesinger Timer
Ext.Osiris.RegisterListener("ObjectTimerFinished", 2, "before", function(character, timer)
	local level = Osi.GetLevel(character)
	if timer == "BladesingerWeapon" and level == 2 and Osi.HasPassive(character,"Bladesong_WeaponCheck") == 1 then
		Osi.ApplyStatus(character,"BLADESINGER_WEAPON",-1.0,1)
		if Osi.HasPassive(character,"Proficiency_Warhammers") == 1 then
			Osi.TemplateAddTo("6b17998d-2e79-405d-8b1f-beb53658312f",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Clubs") == 1 then
			Osi.TemplateAddTo("d9c87013-1f41-4c17-b71d-f353ec0d64e8",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Daggers") == 1 then
			Osi.TemplateAddTo("569b0f3d-abcd-4b01-aaf0-979091288163",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Flails") == 1 then
			Osi.TemplateAddTo("9eadef92-5dd0-408e-9b55-1cf791cafe9d",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Handaxes") == 1 then
			Osi.TemplateAddTo("46b64a36-8446-45bd-98e8-ee81e3136baa",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Javelins") == 1 then
			Osi.TemplateAddTo("0a7adc8d-b561-4f81-a8f2-ec07b5d54955",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_LightHammers") == 1 then
			Osi.TemplateAddTo("494f21ac-5a1b-4e91-bd30-551b79532516",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Longswords") == 1 then
			Osi.TemplateAddTo("1865323f-b428-4791-a0a9-578841e57463",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Maces") == 1 then
			Osi.TemplateAddTo("3186796d-3ab3-4d49-bfc2-cba1aff0cf5a",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Morningstars") == 1 then
			Osi.TemplateAddTo("26a9fba6-1a60-4691-84ea-da7ffcb304e0",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Rapiers") == 1 then
			Osi.TemplateAddTo("7061f489-4b13-4982-aa09-cf0ad961e75f",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Scimitars") == 1 then
			Osi.TemplateAddTo("868217db-9dcb-414c-bb88-e321ab3e0349",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Shortswords") == 1 then
			Osi.TemplateAddTo("467ddb4f-6791-41fa-99f7-ee8620d63bbe",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Sickles") == 1 then
			Osi.TemplateAddTo("50d677ed-3a0e-40e9-8291-ee6823af5672",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Spears") == 1 then
			Osi.TemplateAddTo("9f0f1c0e-012d-44e1-9b29-86c64d2bf675",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Tridents") == 1 then
			Osi.TemplateAddTo("d3807461-7c32-44ae-9aba-49ef4d3bf35e",character,1,0)
		elseif Osi.HasPassive(character,"Proficiency_Warpicks") == 1 then
			Osi.TemplateAddTo("6b17998d-2e79-405d-8b1f-beb53658312f",character,1,0)
		end

		local party = Osi.DB_Players:Get(nil)
		for _,p in pairs(party) do
			for _,tags in pairs(bladesongWeaponTags) do
			Osi.DB_GLO_Spells_BladesongWeaponBlockers(tags)
			local tag = Osi.DB_GLO_Spells_BladesongWeaponBlockers:Get(nil)
			end
		end
	end
end)

-- Bladesinger Inventory Equip
Ext.Osiris.RegisterListener("AddedTo", 3, "after", function(item, character, _)
	if	Osi.HasActiveStatus(character,"BLADESINGER_WEAPON") == 1 then
		Osi.Equip(character,item)
		Osi.RemoveStatus(character,"BLADESINGER_WEAPON")
	end
end)

Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "before", function(level, _)
    if level ~= "SYS_CC_I" then
		local party = Osi.DB_Players:Get(nil)
		for _,p in pairs(party) do
			if Osi.HasPassive(p[1],"Bladesong_WeaponCheck") == 1 then
				for _,tags in pairs(bladesongWeaponTags) do
				Osi.DB_GLO_Spells_BladesongWeaponBlockers(tags)
				local tag = Osi.DB_GLO_Spells_BladesongWeaponBlockers:Get(nil)
				end
			end
		end
	end
end)

-- Bladesinger Equipped Weapon Check
Ext.Osiris.RegisterListener("Equipped", 2, "after", function(item, character)
	if IsTagged(character,"WIZARD_BLADESINGING_bc52a699-cf55-4dad-9710-927e655910fd") == 1 and Osi.IsWeapon(item) == 1 and Osi.HasPassive(character,"Bladesong_WeaponCheck") == 1 then
		if Osi.IsTagged(item,"WPN_GREATAXE_02da79f5-6f13-4f90-9819-102e37693f48") == 1 or Osi.IsTagged(item,"WPN_LIGHT_CROSSBOW_a302a8e2-a3f9-41e1-a68c-70a453e65399") == 1 or Osi.IsTagged(item,"WPN_MAUL_2503012b-9cc4-491c-a068-282f8cea8707") == 1 or Osi.IsTagged(item,"WPN_HALBERD_2c74855f-769a-43f5-b6db-48c4c47721ff") == 1 or Osi.IsTagged(item,"WPN_HEAVY_CROSSBOW_2cc23bb9-d777-4265-a34c-333528628b90") == 1 or Osi.IsTagged(item,"WPN_LONGBOW_557d335c-0780-4665-9802-709a7d202dba") == 1 or Osi.IsTagged(item,"WPN_LONGBOW_557d335c-0780-4665-9802-709a7d202dba") == 1 or Osi.IsTagged(item,"WPN_GLAIVE_7a15ea4f-cb00-4201-8e7f-024627e3d014") == 1 or Osi.IsTagged(item,"WPN_SHORTBOW_81197304-7116-4d7b-8ef4-207bbf636682") == 1 or Osi.IsTagged(item,"WPN_GREATCLUB_81197304-7116-4d7b-8ef4-207bbf636682") == 1 or Osi.IsTagged(item,"WPN_GREATSWORD_aec4ed1a-993b-491f-a2db-640bf11869c1") == 1 or Osi.IsTagged(item,"WPN_DART_c23ac9ef-5b47-4c2d-8ce5-7b60a8b34787") == 1 or Osi.IsTagged(item,"WPN_PIKE_ca1a548b-f409-4cad-af5a-dfdd5834c709") == 1 then
		Osi.ApplyStatus(character,"BLADESONG_WEAPON_MESSAGE",-1.0,1)
		elseif Osi.IsTagged(item,"WPN_GREATAXE_02da79f5-6f13-4f90-9819-102e37693f48") == 0 and Osi.IsTagged(item,"WPN_LIGHT_CROSSBOW_a302a8e2-a3f9-41e1-a68c-70a453e65399") == 0 and Osi.IsTagged(item,"WPN_MAUL_2503012b-9cc4-491c-a068-282f8cea8707") == 0 and Osi.IsTagged(item,"WPN_HALBERD_2c74855f-769a-43f5-b6db-48c4c47721ff") == 0 and Osi.IsTagged(item,"WPN_HEAVY_CROSSBOW_2cc23bb9-d777-4265-a34c-333528628b90") == 0 and Osi.IsTagged(item,"WPN_LONGBOW_557d335c-0780-4665-9802-709a7d202dba") == 0 and Osi.IsTagged(item,"WPN_LONGBOW_557d335c-0780-4665-9802-709a7d202dba") == 0 and Osi.IsTagged(item,"WPN_GLAIVE_7a15ea4f-cb00-4201-8e7f-024627e3d014") == 0 and Osi.IsTagged(item,"WPN_SHORTBOW_81197304-7116-4d7b-8ef4-207bbf636682") == 0 and Osi.IsTagged(item,"WPN_GREATCLUB_81197304-7116-4d7b-8ef4-207bbf636682") == 0 and Osi.IsTagged(item,"WPN_GREATSWORD_aec4ed1a-993b-491f-a2db-640bf11869c1") == 0 and Osi.IsTagged(item,"WPN_DART_c23ac9ef-5b47-4c2d-8ce5-7b60a8b34787") == 0 and Osi.IsTagged(item,"WPN_PIKE_ca1a548b-f409-4cad-af5a-dfdd5834c709") == 0 then
			Osi.RemoveStatus(character,"BLADESONG_WEAPON_MESSAGE")
		end
	end
end)

-- Bladesinger Unequipped Weapon Check
Ext.Osiris.RegisterListener("Unequipped", 2, "after", function(item, character)
	if IsTagged(character,"WIZARD_BLADESINGING_bc52a699-cf55-4dad-9710-927e655910fd") == 1 and Osi.IsWeapon(item) == 1 and Osi.HasPassive(character,"Bladesong_WeaponCheck") == 1 then
		if Osi.IsTagged(item,"WPN_GREATAXE_02da79f5-6f13-4f90-9819-102e37693f48") == 1 or Osi.IsTagged(item,"WPN_MAUL_2503012b-9cc4-491c-a068-282f8cea8707") == 1 or Osi.IsTagged(item,"WPN_HALBERD_2c74855f-769a-43f5-b6db-48c4c47721ff") == 1 or Osi.IsTagged(item,"WPN_LIGHT_CROSSBOW_a302a8e2-a3f9-41e1-a68c-70a453e65399") == 1 or Osi.IsTagged(item,"WPN_HEAVY_CROSSBOW_2cc23bb9-d777-4265-a34c-333528628b90") == 1 or Osi.IsTagged(item,"WPN_LONGBOW_557d335c-0780-4665-9802-709a7d202dba") == 1 or Osi.IsTagged(item,"WPN_LONGBOW_557d335c-0780-4665-9802-709a7d202dba") == 1 or Osi.IsTagged(item,"WPN_GLAIVE_7a15ea4f-cb00-4201-8e7f-024627e3d014") == 1 or Osi.IsTagged(item,"WPN_SHORTBOW_81197304-7116-4d7b-8ef4-207bbf636682") == 1 or Osi.IsTagged(item,"WPN_GREATCLUB_81197304-7116-4d7b-8ef4-207bbf636682") == 1 or Osi.IsTagged(item,"WPN_GREATSWORD_aec4ed1a-993b-491f-a2db-640bf11869c1") == 1 or Osi.IsTagged(item,"WPN_DART_c23ac9ef-5b47-4c2d-8ce5-7b60a8b34787") == 1 or Osi.IsTagged(item,"WPN_PIKE_ca1a548b-f409-4cad-af5a-dfdd5834c709") == 1 then
			Osi.RemoveStatus(character,"BLADESONG_WEAPON_MESSAGE")
		end
	end
end)

-- Command Undead
-- Handling rolls manually due to the need to check specific intelligence scores in multiple contexts.
-- Statuses: _TRIGGER is applied by spell solely to notify StatusApplied, _FAILED blocks further attempts on a failed CU,
-- _TIMER is an hourly save for creatures with Int 12 or higher, _DROP will clear CU.
EXP_tCommandUndead      = {};
EXP_tLimboUndead        = {};

-- ////////////////////////////////////////////////////
-- Modvars stuff.
Ext.Vars.RegisterModVariable(ModuleUUID, "EXP_commandedundead", {});
Ext.Vars.RegisterModVariable(ModuleUUID, "EXP_limboundead", {});
function EXP_ObtainCommandedUndead()
    local modvars = Ext.Vars.GetModVariables(ModuleUUID);
    if modvars.EXP_commandedundead == nil then modvars.EXP_commandedundead = {}; end
    if modvars.EXP_limboundead == nil then modvars.EXP_limboundead = {}; end
    return modvars;
end

Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(levelName, isEditorMode)
    local modvars   = EXP_ObtainCommandedUndead();
    EXP_tCommandUndead  = modvars.EXP_commandedundead;
    EXP_tLimboUndead    = modvars.EXP_limboundead;
end)

-- ////////////////////////////////////////////////////
-- Utils
local function PruneDB(charID)
    if Osi.DB_PartyFollowers:Get(charID) then
        Osi.DB_PartyFollowers:Delete(charID);
    end
    if Osi.DB_PartyMembers:Get(charID) then
        Osi.DB_PartyMembers:Delete(charID);
    end
    if Osi.DB_IsOrWasInParty:Get(charID) then
        Osi.DB_IsOrWasInParty:Delete(charID);
            end
        end

local function SourceConcat(sourceID)
    local source;
    local e = Ext.Entity.Get(sourceID);
    if e and e.ServerCharacter then
        source = e.ServerCharacter.Template.Name .. "_" .. sourceID;
    end
    return e and false or source;
end

-- Main
function EXP_UncommandUndead(casterID)
    -- Strips the base status upon application.
    local ud = EXP_tCommandUndead[casterID].Undead;
    ApplyStatus(ud, "COMMAND_UNDEAD_DROP", 6, 1, casterID);
    RemovePartyFollower(ud, casterID);
    PruneDB(ud);
    -- Attempt to restore original leader if applicable.
    if EXP_tCommandUndead[casterID].Origin and IsDead(ud) == 0 then
        AddPartyFollower(ud, EXP_tCommandUndead[casterID].Origin);
    end
    local modvars = EXP_ObtainCommandedUndead();
    EXP_tCommandUndead[casterID] = nil;
        modvars.EXP_commandedundead = EXP_tCommandUndead;
    if EXP_tLimboUndead[ud] then
        EXP_tLimboUndead[ud] = nil;
            modvars.EXP_limboundead = EXP_tLimboUndead;
        end
    end

function EXP_CommandUndead(targetID, sourceID, is_int)
        if HasActiveStatus(targetID, "COMMAND_UNDEAD") == 0 then
            -- Need to grab leader because may need to restore follower status after Command Undead.
            local leaderID;
        local entity = Ext.Entity.Get(targetID);
        if entity and entity.PartyFollower and entity.PartyFollower.Following then
            local leader = entity.PartyFollower.Following;
                leaderID = leader.Uuid.EntityUuid;
                if leaderID then
                    RemovePartyFollower(targetID, leaderID);
                end
            end
            ApplyStatus(targetID, "COMMAND_UNDEAD", -1, 1, sourceID);
            AddPartyFollower(targetID, sourceID);
        EXP_tCommandUndead[sourceID] = { 
            Undead = targetID,
                Origin = leaderID,
            };
            local modvars = EXP_ObtainCommandedUndead();
            modvars.EXP_commandedundead = EXP_tCommandUndead;
        end
    -- Applying initial re-roll timer for intelligent undead.
    if is_int then
            ApplyStatus(targetID, "COMMAND_UNDEAD_TIMER", 3600, 1, sourceID)
        end
end

-- Listen for statuses that designate CU changes. No longer handle saves on the Lua end.
Ext.Osiris.RegisterListener("StatusApplied",4,"after", function(targetID, status, sourceID, _)
    if status ~= "COMMAND_UNDEAD_FAILED" then return; end
    -- StatusApplied yields UUID without Name attribute for sourceID, which would call for truncated sourceIDs elsewhere.
    local source = SourceConcat(sourceID) or sourceID;
    if EXP_tCommandUndead[source]
    and (EXP_tCommandUndead[source].Undead ~= targetID
    or (EXP_tCommandUndead[source].Undead == targetID and status == "COMMAND_UNDEAD_FAILED")) then
        EXP_UncommandUndead(source);
    end
end)

-- Remove on death.
Ext.Osiris.RegisterListener("Died", 1, "after", function(charID)
    if next(EXP_tCommandUndead) == nil then return; end
    for src, ud in pairs(EXP_tCommandUndead) do
        if ud.Undead == charID then
            EXP_UncommandUndead(src);
            break;
        end
    end
end)

-- Remove on respec.
Ext.Osiris.RegisterListener("RespecCompleted",1,"after",function(charID)
    if next(EXP_tCommandUndead) == nil then return; end
    if EXP_tCommandUndead[charID] and HasActiveStatus(EXP_tCommandUndead[charID].Undead, "COMMAND_UNDEAD") == 1 then
        EXP_UncommandUndead(charID);
        local modvars = EXP_ObtainCommandedUndead();
        modvars.EXP_commandedundead = EXP_tCommandUndead;
    end
end)

-- ////////////////////////////////////////////////////
-- ////////////////////////////////////////////////////
-- ////////////////////////////////////////////////////
-- This is all to handle Larian's DB_GLO_Follower_Reassigning.
-- Need to account here for NPCs leaving party with an active CU follower, because that follower will be xfer'd to leader.
-- On NPC left party, record any CU creatures in limbo state.
function CU_OnSessionLoaded()
    Ext.Osiris.RegisterListener("DB_GLO_Follower_Reassigning",3,"after",function(charID,oldOwnerID,newOwnerID)
        if next(EXP_tCommandUndead) == nil then return; end
        --_P("GLO_Follower_Swap",charID,oldOwnerID,newOwnerID);
        for src, ud in pairs(EXP_tCommandUndead) do
            if ud.Undead == charID and src ~= newOwnerID then
                EXP_tLimboUndead[charID] = src;
                local modvars = EXP_ObtainCommandedUndead();
                modvars.EXP_limboundead = EXP_tLimboUndead;
                break;
            end
        end
    end)
end
Ext.Events.SessionLoaded:Subscribe(CU_OnSessionLoaded);

-- On follower joins party, remove if owner isn't the CU source.
Ext.Osiris.RegisterListener("DB_PartyFollowers",1,"after",function(charID)
    if next(EXP_tLimboUndead) == nil then return; end
    if EXP_tLimboUndead[charID] and EXP_tLimboUndead[charID] ~= CharacterGetOwner(charID) then
        RemovePartyFollower(charID, CharacterGetOwner(charID));
    end
end)

-- On NPC joins party, re-apply any active CU followers.
Ext.Osiris.RegisterListener("CharacterJoinedParty",1,"after",function(charID)
    if next(EXP_tLimboUndead) == nil then return; end
    if EXP_tCommandUndead[charID] then
        for ud, src in pairs(EXP_tLimboUndead) do
            if EXP_tCommandUndead[charID].Undead == ud and (HasActiveStatus(ud, "COMMAND_UNDEAD") == 1 or HasActiveStatus(ud, "COMMAND_UNDEAD_TIMER") == 1) then
                AddPartyFollower(ud, src);
                EXP_tLimboUndead[ud] = nil;
                local modvars = EXP_ObtainCommandedUndead();
                modvars.EXP_limboundead = EXP_tLimboUndead;
            elseif EXP_tCommandUndead[charID].Undead == ud then
                EXP_tLimboUndead[ud] = nil;
                local modvars = EXP_ObtainCommandedUndead();
                modvars.EXP_limboundead = EXP_tLimboUndead;
            end
        end
    end
end)

-- ////////////////////////////////////////////////////
-- Cleaner command.
function CommandUndead_Cleaner()
    if next(EXP_tCommandUndead) == nil then return; end
    for src, ud in pairs(EXP_tCommandUndead) do
        RemovePartyFollower(ud.Undead, CharacterGetOwner(ud.Undead));
        EXP_UncommandUndead(src);
    end
end
Ext.RegisterConsoleCommand("EXP_clearcommandundead", CommandUndead_Cleaner);

--[[ Command Undead Osiris WIP
Ext.Osiris.RegisterListener("StatusApplied",4,"after", function(character, status, source, _)
    if status == "COMMAND_UNDEAD_TECHNICAL" then
		Osi.SetDualEntityEvent(character,source,"CommandUndeadFollower",0)
    end
end)

-- Command Undead Followup
Ext.Osiris.RegisterListener("DualEntityEvent",3,"after", function(character, source, event)
	if event == "CommandUndeadFollower" then
		local owner = Osi.CharacterGetOwner(character)
		Osi.RemovePartyLeader(character,owner)
		Osi.ApplyStatus(character,"COMMAND_UNDEAD",-1,1,source)
		Osi.AddPartyFollower(character,source)
		Osi.SetVarObject(character,"UndeadCommandOriginalOwner",owner)
		Osi.SetVarObject(character,"UndeadCommandCaster",source)
		Osi.SetVarObject(source,"UndeadCommandTarget",character)
    end
end)

-- Command Undead On Death
Ext.Osiris.RegisterListener("Died", 1, "after", function(character)
	if Osi.HasActiveStatus(character,"COMMAND_UNDEAD_DEATH_STATUS") == 1 then
		local caster = Osi.GetVarObject(character,"UndeadCommandCaster")
		Osi.SetEntityEvent(caster,"CommandUndeadDeathRemoveFollower")
    end
end)

-- Command Undead On Death Followup
Ext.Osiris.RegisterListener("EntityEvent", 1, "after", function(character, event)
	if event == "CommandUndeadDeathRemoveFollower" then
		local target = Osi.GetVarObject(character,"UndeadCommandTarget")
		Osi.ApplyStatus(target,"COMMAND_UNDEAD_DROP",6.0,1,character)
		Osi.RemovePartyLeader(target,character)
		if Osi.DB_PartyFollowers:Get(target) then
			Osi.DB_PartyFollowers:Delete(target)
		end
		if Osi.DB_PartyMembers:Get(target) then
			Osi.DB_PartyMembers:Delete(target)
		end
		if Osi.DB_IsOrWasInParty:Get(target) then
			Osi.DB_IsOrWasInParty:Delete(target)
		end
    end
end)

-- Command Undead on Respec
Ext.Osiris.RegisterListener("RespecCompleted",1,"after",function(character)
	if Osi.HasActiveStatus(character,"COMMAND_UNDEAD_OWNER") == 1 then
		local target = Osi.GetVarObject(character,"UndeadCommandTarget")
		if Osi.HasActiveStatus(target, "COMMAND_UNDEAD") == 1 then
			Osi.SetEntityEvent(caster,"CommandUndeadRespecRemoveFollower")
		end
    end
end)

-- Command Undead On Respec Followup
Ext.Osiris.RegisterListener("EntityEvent", 1, "after", function(character, event)
	if event == "CommandUndeadRespecRemoveFollower" then
		local target = Osi.GetVarObject(character,"UndeadCommandTarget")
		Osi.ApplyStatus(target,"COMMAND_UNDEAD_DROP",6.0,1,character)
		Osi.RemovePartyLeader(target,character)
		if Osi.DB_PartyFollowers:Get(target) then
			Osi.DB_PartyFollowers:Delete(target)
		end
		if Osi.DB_PartyMembers:Get(target) then
			Osi.DB_PartyMembers:Delete(target)
		end
		if Osi.DB_IsOrWasInParty:Get(target) then
			Osi.DB_IsOrWasInParty:Delete(target)
		end

		local owner = Osi.GetVarObject(target,"UndeadCommandOriginalOwner")
		if owner ~= nil then
			Osi.AddPartyFollower(target,owner)
		end
    end
end)--]]

-- Overchannel
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, source, cause)
	if status == "OVERCHANNEL" then
		Osi.RealtimeObjectTimerLaunch(character, "OverchannelTimer", 2000.0)
	end
end)

-- Overchannel Timer
Ext.Osiris.RegisterListener("ObjectTimerFinished", 2, "after", function (character, timer)
	if timer == "OverchannelTimer" then
		Osi.RemoveStatus(character,"OVERCHANNEL")
	end
end)

-- Umbral Form Part 1
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function (character)
	if Osi.HasActiveStatus(character,"UMBRAL_FORM") == 1 then
		Osi.ApplyStatus(character,"UMBRAL_FORM_WALKTHROUGH_AURA",6.0,0,character)
	end
end)

-- Umbral Form Part 2
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function (character)
	if Osi.HasActiveStatus(character,"UMBRAL_FORM_WALKTHROUGH") == 1 then
		Osi.RemoveStatus(character,"UMBRAL_FORM_WALKTHROUGH")
	end
end)

-- ???
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
	_D(status)
end)