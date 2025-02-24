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

-- Divine Strike 14th
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function (character)
	if Osi.HasPassive(character,"Divine_Strike_Life_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_Nature_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_Tempest_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_Trickery_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_War_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_Trickery") == 1 or Osi.HasPassive(character,"Divine_Strike_Life") == 1 or Osi.HasPassive(character,"Divine_Strike_Nature") == 1 or Osi.HasPassive(character,"Divine_Strike_Tempest") == 1 or Osi.HasPassive(character,"Divine_Strike_War") == 1 then
		local dsmlife = Ext.Stats.Get("Target_DivineStrike_Melee_Life")
		dsmlife.DescriptionParams = "DealDamage(2d8,Radiant);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmlife.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Radiant)"
		dsmlife:Sync()
		local dsrlife = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Life")
		dsrlife.DescriptionParams = "DealDamage(2d8,Radiant);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrlife.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Radiant)"
		dsrlife:Sync()
		local dsclife = Ext.Stats.Get("Target_DivineStrike_Life_Container")
		dsclife.DescriptionParams = "DealDamage(2d8,Radiant);DealDamage(MainMeleeWeapon,MainMeleeWeaponDamageType)"
		dsclife.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Radiant)"
		dsclife:Sync()
		local dscnature = Ext.Stats.Get("Target_DivineStrike_Nature_Container")
		dscnature.DescriptionParams = "DealDamage(2d8,Cold);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Fire);DealDamage(2d8,Lightning)"
		dscnature:Sync()		
		local dsmncold = Ext.Stats.Get("Target_DivineStrike_Melee_Nature_Cold")
		dsmncold.DescriptionParams = "DealDamage(2d8,Cold);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmncold.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Cold)"
		dsmncold:Sync()
		local dsrncold = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Nature_Cold")
		dsrncold.DescriptionParams = "DealDamage(2d8,Cold);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrncold.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Cold)"
		dsrncold:Sync()
		local dsmnfire = Ext.Stats.Get("Target_DivineStrike_Melee_Nature_Fire")
		dsmnfire.DescriptionParams = "DealDamage(2d8,Fire);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmnfire.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Fire)"
		dsmnfire:Sync()
		local dsrnfire = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Nature_Fire")
		dsrnfire.DescriptionParams = "DealDamage(2d8,Fire);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrnfire.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Fire)"
		dsrnfire:Sync()
		local dsmnlightning = Ext.Stats.Get("Target_DivineStrike_Melee_Nature_Lightning")
		dsmnlightning.DescriptionParams = "DealDamage(2d8,Lightning);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmnlightning.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Lightning)"
		dsmnlightning:Sync()
		local dsrnlightning = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Nature_Lightning")
		dsrnlightning.DescriptionParams = "DealDamage(2d8,Lightning);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrnlightning.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Lightning)"
		dsrnlightning:Sync()
		local dsctempest = Ext.Stats.Get("Target_DivineStrike_Tempest_Container")
		dsctempest.DescriptionParams = "DealDamage(2d8,Thunder);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsctempest.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Thunder)"
		dsctempest:Sync()
		local dsmtempest = Ext.Stats.Get("Target_DivineStrike_Melee_Tempest")
		dsmtempest.DescriptionParams = "DealDamage(2d8,Thunder);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmtempest.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Thunder)"
		dsmtempest:Sync()
		local dsrtempest = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Tempest")
		dsrtempest.DescriptionParams = "DealDamage(2d8,Thunder);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrtempest.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Thunder)"
		dsrtempest:Sync()
		local dsctrickery = Ext.Stats.Get("Target_DivineStrike_Trickery_Container")
		dsctrickery.DescriptionParams = "DealDamage(2d8,Poison);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsctrickery.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Poison)"
		dsctrickery:Sync()
		local dsmtrickery = Ext.Stats.Get("Target_DivineStrike_Melee_Trickery")
		dsmtrickery.DescriptionParams = "DealDamage(2d8,Poison);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmtrickery.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Poison)"
		dsmtrickery:Sync()
		local dsrtrickery = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Trickery")
		dsrtrickery.DescriptionParams = "DealDamage(2d8,Poison);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrtrickery.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(2d8,Poison)"
		dsrtrickery:Sync()
		local dscwar = Ext.Stats.Get("Target_DivineStrike_War_Container")
		dscwar.DescriptionParams = "DealDamage(2d8, MainMeleeWeaponDamageType)"
		dscwar.TooltipDamageList = "DealDamage(MainMeleeWeapon+2d8, MainMeleeWeaponDamageType)"
		dscwar:Sync()
		local dsmwar = Ext.Stats.Get("Target_DivineStrike_Melee_War")
		dsmwar.DescriptionParams = "DealDamage(2d8, MainMeleeWeaponDamageType)"
		dsmwar.TooltipDamageList = "DealDamage(MainMeleeWeapon+2d8, MainMeleeWeaponDamageType)"
		dsmwar:Sync()
		local dsrwar = Ext.Stats.Get("Projectile_DivineStrike_Ranged_War")
		dsrwar.DescriptionParams = "DealDamage(2d8, MainMeleeWeaponDamageType)"
		dsrwar.TooltipDamageList = "DealDamage(MainMeleeWeapon+2d8, MainMeleeWeaponDamageType)"
		dsrwar:Sync()
	elseif Osi.HasPassive(character,"Divine_Strike_Life_Toggle_2") == 0 and Osi.HasPassive(character,"Divine_Strike_Nature_Toggle_2") == 0 and Osi.HasPassive(character,"Divine_Strike_Tempest_Toggle_2") == 0 and Osi.HasPassive(character,"Divine_Strike_Trickery_Toggle_2") == 0 and Osi.HasPassive(character,"Divine_Strike_War_Toggle_2") == 0 then
		local dsmlife = Ext.Stats.Get("Target_DivineStrike_Melee_Life")
		dsmlife.DescriptionParams = "DealDamage(1d8,Radiant);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmlife.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Radiant)"
		dsmlife:Sync()
		local dsrlife = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Life")
		dsrlife.DescriptionParams = "DealDamage(1d8,Radiant);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrlife.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Radiant)"
		dsrlife:Sync()
		local dsclife = Ext.Stats.Get("Target_DivineStrike_Life_Container")
		dsclife.DescriptionParams = "DealDamage(1d8,Radiant);DealDamage(MainMeleeWeapon,MainMeleeWeaponDamageType)"
		dsclife.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Radiant)"
		dsclife:Sync()
		local dscnature = Ext.Stats.Get("Target_DivineStrike_Nature_Container")
		dscnature.DescriptionParams = "DealDamage(1d8,Cold);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Fire);DealDamage(1d8,Lightning)"
		dscnature:Sync()		
		local dsmncold = Ext.Stats.Get("Target_DivineStrike_Melee_Nature_Cold")
		dsmncold.DescriptionParams = "DealDamage(1d8,Cold);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmncold.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Cold)"
		dsmncold:Sync()
		local dsrncold = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Nature_Cold")
		dsrncold.DescriptionParams = "DealDamage(1d8,Cold);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrncold.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Cold)"
		dsrncold:Sync()
		local dsmnfire = Ext.Stats.Get("Target_DivineStrike_Melee_Nature_Fire")
		dsmnfire.DescriptionParams = "DealDamage(1d8,Fire);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmnfire.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Fire)"
		dsmnfire:Sync()
		local dsrnfire = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Nature_Fire")
		dsrnfire.DescriptionParams = "DealDamage(1d8,Fire);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrnfire.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Fire)"
		dsrnfire:Sync()
		local dsmnlightning = Ext.Stats.Get("Target_DivineStrike_Melee_Nature_Lightning")
		dsmnlightning.DescriptionParams = "DealDamage(1d8,Lightning);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmnlightning.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Lightning)"
		dsmnlightning:Sync()
		local dsrnlightning = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Nature_Lightning")
		dsrnlightning.DescriptionParams = "DealDamage(1d8,Lightning);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrnlightning.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Lightning)"
		dsrnlightning:Sync()
		local dsctempest = Ext.Stats.Get("Target_DivineStrike_Tempest_Container")
		dsctempest.DescriptionParams = "DealDamage(1d8,Thunder);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsctempest.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Thunder)"
		dsctempest:Sync()
		local dsmtempest = Ext.Stats.Get("Target_DivineStrike_Melee_Tempest")
		dsmtempest.DescriptionParams = "DealDamage(1d8,Thunder);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmtempest.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Thunder)"
		dsmtempest:Sync()
		local dsrtempest = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Tempest")
		dsrtempest.DescriptionParams = "DealDamage(1d8,Thunder);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrtempest.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Thunder)"
		dsrtempest:Sync()
		local dsctrickery = Ext.Stats.Get("Target_DivineStrike_Trickery_Container")
		dsctrickery.DescriptionParams = "DealDamage(1d8,Poison);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsctrickery.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Poison)"
		dsctrickery:Sync()
		local dsmtrickery = Ext.Stats.Get("Target_DivineStrike_Melee_Trickery")
		dsmtrickery.DescriptionParams = "DealDamage(1d8,Poison);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsmtrickery.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Poison)"
		dsmtrickery:Sync()
		local dsrtrickery = Ext.Stats.Get("Projectile_DivineStrike_Ranged_Trickery")
		dsrtrickery.DescriptionParams = "DealDamage(1d8,Poison);DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType)"
		dsrtrickery.TooltipDamageList = "DealDamage(MainMeleeWeapon, MainMeleeWeaponDamageType);DealDamage(1d8,Poison)"
		dsrtrickery:Sync()
		local dscwar = Ext.Stats.Get("Target_DivineStrike_War_Container")
		dscwar.DescriptionParams = "DealDamage(1d8, MainMeleeWeaponDamageType)"
		dscwar.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d8, MainMeleeWeaponDamageType)"
		dscwar:Sync()
		local dsmwar = Ext.Stats.Get("Target_DivineStrike_Melee_War")
		dsmwar.DescriptionParams = "DealDamage(1d8, MainMeleeWeaponDamageType)"
		dsmwar.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d8, MainMeleeWeaponDamageType)"
		dsmwar:Sync()
		local dsrwar = Ext.Stats.Get("Projectile_DivineStrike_Ranged_War")
		dsrwar.DescriptionParams = "DealDamage(1d8, MainMeleeWeaponDamageType)"
		dsrwar.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d8, MainMeleeWeaponDamageType)"
		dsrwar:Sync()
	end
end)

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

-- Cleansing Touch
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (object, status, causee, _)
	if status == "CLEANSING_TOUCH" and Osi.IsCharacter(object) == 1 then
		for _, esvStatus in pairs(Ext.Entity.Get(object).ServerCharacter.StatusManager.Statuses) do
			if Osi.SpellHasSpellFlag(esvStatus.SourceSpell.Prototype, "IsSpell") == 1 then
				Osi.RemoveStatus(object,esvStatus.StatusId)
			end
		end
	end
end)

-- Share Spells Setup
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
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
  Target_AnimateDead = "SignatureSpells_AnimateDead",
  Shout_AshardalonsStride = "SignatureSpells_AshardalonsStride",
  Target_BestowCurse = "SignatureSpells_BestowCurse",
  Shout_Blink = "SignatureSpells_Blink",
  Target_Catnap = "SignatureSpells_Catnap",
  Target_Counterspell = "SignatureSpells_Counterspell",
  Target_EnemiesAbound = "SignatureSpells_EnemiesAbound",
  Target_EruptingEarth = "SignatureSpells_EruptingEarth",
  Zone_Fear = "SignatureSpells_Fear",
  Target_FeignDeath = "SignatureSpells_FeignDeath",
  Projectile_Fireball = "SignatureSpells_Fireball",
  Target_FlameArrows = "SignatureSpells_FlameArrows",
  Target_Fly = "SignatureSpells_Fly",
  Target_GaseousForm = "SignatureSpells_GaseousForm",
  Target_GlyphOfWarding = "SignatureSpells_GlyphOfWarding",
  Target_Haste = "SignatureSpells_Haste",
  Target_HypnoticPattern = "SignatureSpells_HypnoticPattern",
  Target_IntellectFortress = "SignatureSpells_IntellectFortress",
  Target_LifeTransference = "SignatureSpells_LifeTransference",
  Zone_LightningBolt = "SignatureSpells_LightningBolt",
  Projectile_MinuteMeteors = "SignatureSpells_MinuteMeteors",
  Target_Nondetection = "SignatureSpells_Nondetection",
  Target_ProtectionFromEnergy = "SignatureSpells_ProtectionFromEnergy",
  Target_RemoveCurse = "SignatureSpells_RemoveCurse",
  Target_SleetStorm = "SignatureSpells_SleetStorm",
  Target_Slow = "SignatureSpells_Slow",
  Target_SpeakWithDead = "SignatureSpells_SpeakWithDead",
  Shout_SpiritShroud = "SignatureSpells_SpiritShroud",
  Target_StinkingCloud = "SignatureSpells_StinkingCloud",
  Target_SummonShadowspawn = "SignatureSpells_SummonShadowspawn",
  Teleportation_ThunderStep = "SignatureSpells_ThunderStep",
  Target_VampiricTouch = "SignatureSpells_VampiricTouch"
}

local signatureSpellsList = {}

-- Signature Spells Passive
Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "before", function(level, _)
	if level ~= "SYS_CC_I" then
        local party = Osi.DB_Players:Get(nil)
        for _,p in pairs(party) do
			if Osi.IsTagged(p[1],"WIZARD_6fe3ae27-dc6c-4fc9-9245-710c790c396c") == 1 and Osi.HasPassive(p[1],"SpellMastery") == 1 then
				local lists = Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList").Passives
				signatureSpellsList = Ext.Types.Serialize(lists)
				for v,passives in pairs(signatureSpellsList) do
					for spell,passive in pairs(signatureSpells) do
						if Osi.HasSpell(p[1],spell) == 0 then
							if passives == passive then
								table.remove(signatureSpellsList,v)
								Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList").Passives[v]=nil
--								_D(Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList"))
								Osi.SetEntityEvent(p[1],"SignatureSpellsFollowUp",1)
							end
						end
					end
				end
			end
        end
	end
end)

-- Signature Spells Follow Up
Ext.Osiris.RegisterListener("EntityEvent", 2, "before", function(character, event)
	if event == "SignatureSpellsFollowUp" then
		local lists = Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList").Passives
		signatureSpellsList = Ext.Types.Serialize(lists)
		for v,passives in pairs(signatureSpellsList) do
			for spell,passive in pairs(signatureSpells) do
				if Osi.HasSpell(character,spell) == 0 then
					if passives == passive then
						table.remove(signatureSpellsList,v)
						Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList").Passives[v]=nil
--						_D(Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList"))
					end
				end
			end
		end
	end
end)

-- Signature Spells Leveling Up
Ext.Osiris.RegisterListener("LeveledUp", 1, "before", function(character)
	if Osi.IsTagged(character,"WIZARD_6fe3ae27-dc6c-4fc9-9245-710c790c396c") == 1 and Osi.HasPassive(character,"SpellMastery") == 1 then
		local lists = Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList").Passives
		signatureSpellsList = Ext.Types.Serialize(lists)
		if (#signatureSpellsList == 0) then
			for spell,passive in pairs(signatureSpells) do
				if Osi.HasSpell(character,spell) == 1 then
					table.insert(signatureSpellsList,passive)
					Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList").Passives = signatureSpellsList
--					_D(signatureSpellsList)
				end
			end
		else
			for v,passives in pairs(signatureSpellsList) do
				for spell,passive in pairs(signatureSpells) do
					if Osi.HasSpell(character,spell) == 0 then
						if passives == passive then
							table.remove(signatureSpellsList,v)
							Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList").Passives[v]=nil
							Osi.SetEntityEvent(character,"SignatureSpellsFollowUp",1)
	--						_D(Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList"))
						end
					end
				end
			end
		end
	end
end)

-- Signature Spells Respeccing
Ext.Osiris.RegisterListener("RespecCompleted", 1, "before", function(character)
	if Osi.IsTagged(character,"WIZARD_6fe3ae27-dc6c-4fc9-9245-710c790c396c") == 1 then
		local lists = Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList").Passives
		signatureSpellsList = Ext.Types.Serialize(lists)
		for spell,passive in pairs(signatureSpells) do
			table.insert(signatureSpellsList,passive)
			Ext.StaticData.Get("ec16c6d2-5316-46e7-9ed6-bedf5d4169b2","PassiveList").Passives = signatureSpellsList
--			_D(signatureSpellsList)
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

-- Dedicated Weapon Adjustment
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
  Zone_BurningHands = "SPELL_MASTERY_BURNING_HANDS",
  Throw_Catapult = "SPELL_MASTERY_CATAPULT",
  Target_CauseFear = "SPELL_MASTERY_CAUSE_FEAR",
  Target_CharmPerson = "SPELL_MASTERY_CHARM_PERSON",
  Projectile_ChromaticOrb = "SPELL_MASTERY_CHROMATIC_ORB",
  Zone_ColorSpray = "SPELL_MASTERY_COLOR_SPRAY",
  Shout_DetectMagic = "SPELL_MASTERY_DETECT_MAGIC",
  Shout_DisguiseSelf = "SPELL_MASTERY_DISGUISE_SELF",
  Shout_EarthTremor = "SPELL_MASTERY_EARTH_TREMOR",
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
		end
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

-- Beast Spells Status
Ext.Osiris.RegisterListener("StatusAttempt", 4, "before", function(character, status, causee, _)
	if Osi.IsStatusFromGroup(status, "SG_Polymorph_BeastShape") == 1 and Osi.HasPassive(character,"BeastSpells") == 1 and HasActiveStatus(character,"BEAST_SPELLS_TOGGLE") == 1 then
		local myrmidon = Ext.StaticData.Get("936d22ac-fa88-4c99-8a6c-12c08ab577a2","ShapeshiftRule")
		local beast = Ext.StaticData.Get("9c580a1d-dab9-4b17-b0da-b16c7d7360e0","ShapeshiftRule")
		if myrmidon.RemovePrevSpells == true then
			myrmidon.RemovePrevSpells=false
			myrmidon.WildShapeHotBar=false
		end

		if beast.RemovePrevSpells == true then
			beast.RemovePrevSpells=false
			beast.WildShapeHotBar=false
		end
	end
end)

-- Beast Spells Control
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function (character)
	local myrmidon = Ext.StaticData.Get("936d22ac-fa88-4c99-8a6c-12c08ab577a2","ShapeshiftRule")
	local beast = Ext.StaticData.Get("9c580a1d-dab9-4b17-b0da-b16c7d7360e0","ShapeshiftRule")
	if Osi.HasPassive(character,"BeastSpells") == 0 and myrmidon.RemovePrevSpells == false and HasActiveStatus(character,"BEAST_SPELLS_TOGGLE") == 0 then
		myrmidon.RemovePrevSpells=true
		myrmidon.WildShapeHotBar=true
	elseif Osi.HasPassive(character,"BeastSpells") == 1 and myrmidon.RemovePrevSpells == true and HasActiveStatus(character,"BEAST_SPELLS_TOGGLE") == 1 then
		myrmidon.RemovePrevSpells=false
		myrmidon.WildShapeHotBar=false
	end

	if Osi.HasPassive(character,"BeastSpells") == 0 and beast.RemovePrevSpells == false and HasActiveStatus(character,"BEAST_SPELLS_TOGGLE") == 0 then
		beast.RemovePrevSpells=true
		beast.WildShapeHotBar=true
	elseif Osi.HasPassive(character,"BeastSpells") == 1 and beast.RemovePrevSpells == true and HasActiveStatus(character,"BEAST_SPELLS_TOGGLE") == 1 then
		beast.RemovePrevSpells=false
		beast.WildShapeHotBar=false
	end
end)