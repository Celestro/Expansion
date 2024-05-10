--[[Ext.Require("EXP_SharedBootstrap.lua")

local function EXP_ResetStats()
        Ext.Stats.LoadStatsFile("Public/Expansion/Stats/Generated/Data/Interrupt_Expansion.txt", false)
        Ext.Stats.LoadStatsFile("Public/Expansion/Stats/Generated/Data/Passive_Expansion.txt", false)
        Ext.Stats.LoadStatsFile("Public/Expansion/Stats/Generated/Data/Spells_Expansion.txt", false)
        Ext.Stats.LoadStatsFile("Public/Expansion/Stats/Generated/Data/Status_BOOST_Expansion.txt", false)
end

Ext.Events.ResetCompleted:Subscribe(EXP_ResetStats)--]]

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

-- Cantrip Scaling
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function (character)
	local level = Osi.GetLevel(character)
	if level > 16 then
		for _, name in pairs(Ext.Stats.GetStats("SpellData")) do
			local cantrip = Ext.Stats.Get(name)
			local d4 = Ext.StaticData.Get("b183a804-e9c6-4990-8984-c76d3ed67a9f","LevelMap").LevelMaps[12].AmountOfDices
			local d6 = Ext.StaticData.Get("dc4e3a14-ccc9-4177-8098-bfc3fcb18bc6","LevelMap").LevelMaps[12].AmountOfDices
			local d8 = Ext.StaticData.Get("86c6a562-3e9b-4362-bfac-46a67069efa9","LevelMap").LevelMaps[12].AmountOfDices
			local d10 = Ext.StaticData.Get("e18c6db5-f743-45dc-8fd9-786ea75242c8","LevelMap").LevelMaps[12].AmountOfDices
			local d12 = Ext.StaticData.Get("67432a46-f078-4c62-bade-e5a0f96db334","LevelMap").LevelMaps[12].AmountOfDices
			local eb = Ext.StaticData.Get("ecad9e7a-389d-4789-ba69-898cfd34da3c","LevelMap").LevelMaps
			if	Osi.HasSpell(character,name) == 1 and cantrip.Level == 0 and Osi.SpellHasSpellFlag(name,"IsSpell") == 1 then
				if d4 == 3 then
				Ext.StaticData.Get("b183a804-e9c6-4990-8984-c76d3ed67a9f","LevelMap").LevelMaps[12].AmountOfDices="4"
				end

				if d6 == 3 then
				Ext.StaticData.Get("dc4e3a14-ccc9-4177-8098-bfc3fcb18bc6","LevelMap").LevelMaps[12].AmountOfDices="4"
				end

				if d8 == 3 then
				Ext.StaticData.Get("86c6a562-3e9b-4362-bfac-46a67069efa9","LevelMap").LevelMaps[12].AmountOfDices="4"
				end

				if d10 == 3 then
				Ext.StaticData.Get("e18c6db5-f743-45dc-8fd9-786ea75242c8","LevelMap").LevelMaps[12].AmountOfDices="4"
				end

				if d12 == 3 then
				Ext.StaticData.Get("67432a46-f078-4c62-bade-e5a0f96db334","LevelMap").LevelMaps[12].AmountOfDices="4"
				end
			end
			
			if Osi.HasSpell(character,name) == 1 and name == "Projectile_EldritchBlast" then
			cantrip.DescriptionParams = "4"
			cantrip:Sync()
			end
		end
	elseif level < 17 then
		local cantrip = Ext.Stats.Get("Projectile_EldritchBlast")
		local d4 = Ext.StaticData.Get("b183a804-e9c6-4990-8984-c76d3ed67a9f","LevelMap").LevelMaps[12].AmountOfDices
		local d6 = Ext.StaticData.Get("dc4e3a14-ccc9-4177-8098-bfc3fcb18bc6","LevelMap").LevelMaps[12].AmountOfDices
		local d8 = Ext.StaticData.Get("86c6a562-3e9b-4362-bfac-46a67069efa9","LevelMap").LevelMaps[12].AmountOfDices
		local d10 = Ext.StaticData.Get("e18c6db5-f743-45dc-8fd9-786ea75242c8","LevelMap").LevelMaps[12].AmountOfDices
		local d12 = Ext.StaticData.Get("67432a46-f078-4c62-bade-e5a0f96db334","LevelMap").LevelMaps[12].AmountOfDices
		local eb = Ext.StaticData.Get("ecad9e7a-389d-4789-ba69-898cfd34da3c","LevelMap").LevelMaps
		if d4 == 4 then
		Ext.StaticData.Get("b183a804-e9c6-4990-8984-c76d3ed67a9f","LevelMap").LevelMaps[12].AmountOfDices="3"
		end

		if d6 == 4 then	
		Ext.StaticData.Get("dc4e3a14-ccc9-4177-8098-bfc3fcb18bc6","LevelMap").LevelMaps[12].AmountOfDices="3"
		end

		if d8 == 4 then
		Ext.StaticData.Get("86c6a562-3e9b-4362-bfac-46a67069efa9","LevelMap").LevelMaps[12].AmountOfDices="3"
		end

		if d10 == 4 then
		Ext.StaticData.Get("e18c6db5-f743-45dc-8fd9-786ea75242c8","LevelMap").LevelMaps[12].AmountOfDices="3"
		end

		if d12 == 4 then
		Ext.StaticData.Get("67432a46-f078-4c62-bade-e5a0f96db334","LevelMap").LevelMaps[12].AmountOfDices="3"
		end

		cantrip.DescriptionParams = "3"
		cantrip:Sync()
	end
end)

-- Cantrip Scaling Alternate
Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function (character)
	local level = Osi.GetLevel(character)
	if level > 16 then
		for _, name in pairs(Ext.Stats.GetStats("SpellData")) do
			local cantrip = Ext.Stats.Get(name)
			local d4 = Ext.StaticData.Get("b183a804-e9c6-4990-8984-c76d3ed67a9f","LevelMap").LevelMaps[12].AmountOfDices
			local d6 = Ext.StaticData.Get("dc4e3a14-ccc9-4177-8098-bfc3fcb18bc6","LevelMap").LevelMaps[12].AmountOfDices
			local d8 = Ext.StaticData.Get("86c6a562-3e9b-4362-bfac-46a67069efa9","LevelMap").LevelMaps[12].AmountOfDices
			local d10 = Ext.StaticData.Get("e18c6db5-f743-45dc-8fd9-786ea75242c8","LevelMap").LevelMaps[12].AmountOfDices
			local d12 = Ext.StaticData.Get("67432a46-f078-4c62-bade-e5a0f96db334","LevelMap").LevelMaps[12].AmountOfDices
			local eb = Ext.StaticData.Get("ecad9e7a-389d-4789-ba69-898cfd34da3c","LevelMap").LevelMaps
			if	Osi.HasSpell(character,name) == 1 and cantrip.Level == 0 and Osi.SpellHasSpellFlag(name,"IsSpell") == 1 then
				if d4 == 3 then
				Ext.StaticData.Get("b183a804-e9c6-4990-8984-c76d3ed67a9f","LevelMap").LevelMaps[12].AmountOfDices="4"
				end

				if d6 == 3 then
				Ext.StaticData.Get("dc4e3a14-ccc9-4177-8098-bfc3fcb18bc6","LevelMap").LevelMaps[12].AmountOfDices="4"
				end

				if d8 == 3 then
				Ext.StaticData.Get("86c6a562-3e9b-4362-bfac-46a67069efa9","LevelMap").LevelMaps[12].AmountOfDices="4"
				end

				if d10 == 3 then
				Ext.StaticData.Get("e18c6db5-f743-45dc-8fd9-786ea75242c8","LevelMap").LevelMaps[12].AmountOfDices="4"
				end

				if d12 == 3 then
				Ext.StaticData.Get("67432a46-f078-4c62-bade-e5a0f96db334","LevelMap").LevelMaps[12].AmountOfDices="4"
				end
			end
			
			if Osi.HasSpell(character,name) == 1 and name == "Projectile_EldritchBlast" then
			cantrip.DescriptionParams = "4"
			cantrip:Sync()
			end
		end
	elseif  level > 12 and level < 17 then
		local eb = Ext.Stats.Get("Projectile_EldritchBlast")
		local d4 = Ext.StaticData.Get("b183a804-e9c6-4990-8984-c76d3ed67a9f","LevelMap").LevelMaps[12].AmountOfDices
		local d6 = Ext.StaticData.Get("dc4e3a14-ccc9-4177-8098-bfc3fcb18bc6","LevelMap").LevelMaps[12].AmountOfDices
		local d8 = Ext.StaticData.Get("86c6a562-3e9b-4362-bfac-46a67069efa9","LevelMap").LevelMaps[12].AmountOfDices
		local d10 = Ext.StaticData.Get("e18c6db5-f743-45dc-8fd9-786ea75242c8","LevelMap").LevelMaps[12].AmountOfDices
		local d12 = Ext.StaticData.Get("67432a46-f078-4c62-bade-e5a0f96db334","LevelMap").LevelMaps[12].AmountOfDices
		if d4 == 4 then
		Ext.StaticData.Get("b183a804-e9c6-4990-8984-c76d3ed67a9f","LevelMap").LevelMaps[12].AmountOfDices="3"
		end

		if d6 == 4 then	
		Ext.StaticData.Get("dc4e3a14-ccc9-4177-8098-bfc3fcb18bc6","LevelMap").LevelMaps[12].AmountOfDices="3"
		end

		if d8 == 4 then
		Ext.StaticData.Get("86c6a562-3e9b-4362-bfac-46a67069efa9","LevelMap").LevelMaps[12].AmountOfDices="3"
		end

		if d10 == 4 then
		Ext.StaticData.Get("e18c6db5-f743-45dc-8fd9-786ea75242c8","LevelMap").LevelMaps[12].AmountOfDices="3"
		end

		if d12 == 4 then
		Ext.StaticData.Get("67432a46-f078-4c62-bade-e5a0f96db334","LevelMap").LevelMaps[12].AmountOfDices="3"
		end

		eb.DescriptionParams = "3"
		eb:Sync()
	end
end)

-- Bardic Inspiration Scaling
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function (character)
	if Osi.HasPassive(character,"BardicInspiration_2") == 1 then
		local d10 = Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[10].DiceValue
		if d10 == "D10" then
			Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[12].DiceValue="D12"
		end
	elseif Osi.HasPassive(character,"BardicInspiration_2") == 0 then
		local d12 = Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[10].DiceValue
		if d12 == "D12" then
			Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[12].DiceValue="D10"
		end
	end
end)

-- Bardic Inspiration Scaling Alternate
Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function (character)
	if Osi.HasPassive(character,"BardicInspiration_2") == 1 then
		DelayedCall(1000, function ()
			local d10 = Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[10].DiceValue
			if d10 == "D10" then
				Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[12].DiceValue="D12"
			end
		end)
	elseif Osi.HasPassive(character,"BardicInspiration_2") == 0 then
		DelayedCall(1000, function ()
			local d12 = Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[10].DiceValue
			if d12 == "D12" then
				Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[12].DiceValue="D10"
			end
		end)
	end
end)

-- Divine Strike 14th
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function (character)
	if Osi.HasPassive(character,"Divine_Strike_Life_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_Nature_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_Tempest_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_Trickery_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_War_Toggle_2") == 1 then
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

-- Divine Strike 14th Alternate
Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function (character)
	local level = Osi.GetLevel(character)
	if level > 13 then
		DelayedCall(1000, function ()
			if Osi.HasPassive(character,"Divine_Strike_Life_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_Nature_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_Tempest_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_Trickery_Toggle_2") == 1 or Osi.HasPassive(character,"Divine_Strike_War_Toggle_2") == 1 then
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
			end
		end)
	elseif level < 14 then
		DelayedCall(1000, function ()
			if Osi.HasPassive(character,"Divine_Strike_Life_Toggle_2") == 0 and Osi.HasPassive(character,"Divine_Strike_Nature_Toggle_2") == 0 and Osi.HasPassive(character,"Divine_Strike_Tempest_Toggle_2") == 0 and Osi.HasPassive(character,"Divine_Strike_Trickery_Toggle_2") == 0 and Osi.HasPassive(character,"Divine_Strike_War_Toggle_2") == 0 then
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
	end
end)

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
  "SUGGESTION",
  "MIND_WHIP",
  "MIND_WHIP_MOVEMENT",
  "MIND_WHIP_MOVEMENT_BLOCK",
  "ENEMIES_ABOUND",
  "RAULOTHIMS_PSYCHIC_LANCE",
  "BLINDING_SMITE_BLINDED"
}

-- Cleansing Touch Shared Statuses
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
	if status == "CHARMED" then
		for _, esvStatus in pairs(Ext.Entity.Get(character).ServerCharacter.StatusManager.Statuses) do
			if status == esvStatus.StatusId and Osi.SpellHasSpellFlag(esvStatus.SourceSpell.Prototype, "IsSpell") == 1 then
				local turns = Osi.GetStatusTurns(character,status)
				Osi.ApplyStatus(character,"CHARMED_CLEANSING_TOUCH_TECHNICAL",turns*6,1,causee)
			end
		end
	elseif status == "FRIGHTENED" then
		for _, esvStatus in pairs(Ext.Entity.Get(character).ServerCharacter.StatusManager.Statuses) do
			if status == esvStatus.StatusId and Osi.SpellHasSpellFlag(esvStatus.SourceSpell.Prototype, "IsSpell") == 1 then
				local turns = Osi.GetStatusTurns(character,status)
				Osi.ApplyStatus(character,"FRIGHTENED_CLEANSING_TOUCH_TECHNICAL",turns*6,1,causee)
			end
		end
	elseif status == "POISONED" then
		for _, esvStatus in pairs(Ext.Entity.Get(character).ServerCharacter.StatusManager.Statuses) do
			if status == esvStatus.StatusId and Osi.SpellHasSpellFlag(esvStatus.SourceSpell.Prototype, "IsSpell") == 1 then
				local turns = Osi.GetStatusTurns(character,status)
				Osi.ApplyStatus(character,"POISONED_CLEANSING_TOUCH_TECHNICAL",turns*6,1,causee)
			end
		end
	end
end)

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

		if Osi.HasActiveStatus(character,"CHARMED_CLEANSING_TOUCH_TECHNICAL") == 1 or Osi.HasActiveStatus(character,"FRIGHTENED_CLEANSING_TOUCH_TECHNICAL") == 1 or Osi.HasActiveStatus(character,"POISONED_CLEANSING_TOUCH_TECHNICAL") == 1 then
			Osi.RemoveStatus(character,"CHARMED_CLEANSING_TOUCH_TECHNICAL")
			Osi.RemoveStatus(character,"FRIGHTENED_CLEANSING_TOUCH_TECHNICAL")
			Osi.RemoveStatus(character,"POISONED_CLEANSING_TOUCH_TECHNICAL")
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
Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(level, _)
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
							end
						end
					end
				end
			end
        end
	end
end)

-- Leveling Up
Ext.Osiris.RegisterListener("LeveledUp", 1, "before", function(character)
	if Osi.IsTagged(character,"WIZARD_6fe3ae27-dc6c-4fc9-9245-710c790c396c") == 1 and Osi.HasPassive(character,"SpellMastery") == 1 then
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

-- Respeccing
Ext.Osiris.RegisterListener("RespecCompleted", 1, "after", function(character)
	if Osi.IsTagged(character,"WIZARD_6fe3ae27-dc6c-4fc9-9245-710c790c396c") == 1 then
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

local WeaponPropertyBitFlags = {
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

function MonkWeaponCheck(weapon, wielder)
    local proficiencyGroups = Ext.Entity.Get(weapon).ProficiencyGroup.field_0
    local weaponProperties = Ext.Entity.Get(weapon).Weapon.WeaponProperties
--    _P(weapon, proficiencyGroups, weaponProperties)
	
    if proficiencyGroups & ProficiencyGroupBitFlags["Shortswords"] == ProficiencyGroupBitFlags["Shortswords"] or (proficiencyGroups & ProficiencyGroupBitFlags["SimpleWeapons"] == ProficiencyGroupBitFlags["SimpleWeapons"] and weaponProperties & WeaponPropertyBitFlags["Heavy"] == 0 and weaponProperties & WeaponPropertyBitFlags["Twohanded"] == 0) then
--        _P("Monk Weapon")
        return true
    else
--        Ext.Utils.PrintWarning("Not Monk Weapon")
        return false
    end
end

function DedicatedWeapon(weapon, wielder)
    local proficiencyGroups = Ext.Entity.Get(weapon).ProficiencyGroup.field_0
    local weaponProperties = Ext.Entity.Get(weapon).Weapon.WeaponProperties
			
    if proficiencyGroups & ProficiencyGroupBitFlags["Shortswords"] == ProficiencyGroupBitFlags["Shortswords"] or (proficiencyGroups & ProficiencyGroupBitFlags["SimpleWeapons"] == ProficiencyGroupBitFlags["SimpleWeapons"] and weaponProperties & WeaponPropertyBitFlags["Heavy"] == 0) then
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
end)

-- D10 Martial Arts
Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(character)
	local level = Osi.GetLevel(character)
	if level > 16 then
		for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
			if class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 16 then
				Ext.StaticData.Get("b4136c95-a4f9-4fc1-96bc-00310232d27a","LevelMap").LevelMaps[12].DiceValue="D10"
			end
		end
	end
end)

-- D10 Martial Arts Alternative
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function(character)
	local level = Osi.GetLevel(character)
	if level > 16 and Osi.IsPlayer(character) == 1 then
		for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
			local levelmap = Ext.StaticData.Get("b4136c95-a4f9-4fc1-96bc-00310232d27a","LevelMap").LevelMaps[12].DiceValue
			if class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level > 16 and levelmap == "D8" then
				Ext.StaticData.Get("b4136c95-a4f9-4fc1-96bc-00310232d27a","LevelMap").LevelMaps[12].DiceValue="D10"
			end
		end
	elseif level < 17 then
		for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
			local levelmap = Ext.StaticData.Get("b4136c95-a4f9-4fc1-96bc-00310232d27a","LevelMap").LevelMaps[12].DiceValue
			if class.ClassUUID == "c4598bdb-fc07-40dd-a62c-90cc138bd76f" and class.Level < 17 and levelmap == "D10" then
				Ext.StaticData.Get("b4136c95-a4f9-4fc1-96bc-00310232d27a","LevelMap").LevelMaps[12].DiceValue="D8"
			end
		end
	end
end)

-- D12 Improved Combat Superiority
Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(character)
	local level = Osi.GetLevel(character)
	if level > 17 then
		for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
			if class.ClassUUID == "721dfac3-92d4-41f5-b773-b7072a86232f" and class.Level > 17 then
				Ext.StaticData.Get("f81e8e9e-ffe0-4173-83d6-7cd8cf718477","LevelMap").LevelMaps[12].DiceValue="D12"
			end
		end
	end
end)

-- D12 Improved Combat Superiority
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function(character)
	local level = Osi.GetLevel(character)
	if level > 17 and Osi.IsPlayer(character) == 1 then
		for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
			local levelmap = Ext.StaticData.Get("f81e8e9e-ffe0-4173-83d6-7cd8cf718477","LevelMap").LevelMaps[12].DiceValue
			if class.ClassUUID == "721dfac3-92d4-41f5-b773-b7072a86232f" and class.Level > 17 and levelmap == "D10" then
				Ext.StaticData.Get("f81e8e9e-ffe0-4173-83d6-7cd8cf718477","LevelMap").LevelMaps[12].DiceValue="D12"
			end
		end
	elseif level < 18 then
		for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
			local levelmap = Ext.StaticData.Get("f81e8e9e-ffe0-4173-83d6-7cd8cf718477","LevelMap").LevelMaps[12].DiceValue
			if class.ClassUUID == "721dfac3-92d4-41f5-b773-b7072a86232f" and class.Level < 18 and levelmap == "D12" then
				Ext.StaticData.Get("f81e8e9e-ffe0-4173-83d6-7cd8cf718477","LevelMap").LevelMaps[12].DiceValue="D10"
			end
		end
	end
end)

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

-- D12 Bardic Inspiration
Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(character)
	local level = Osi.GetLevel(character)
	if level > 14 then
		for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
			if class.ClassUUID == "92cd50b6-eb1b-4824-8adb-853e90c34c90" and class.Level > 14 then
				Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[12].DiceValue="D12"
			end
		end
	end
end)

-- D12 Bardic Inspiration Alternative
Ext.Osiris.RegisterListener("GainedControl", 1, "after", function(character)
	local level = Osi.GetLevel(character)
	if level > 14 and Osi.IsPlayer(character) == 1 then
		for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
			local levelmap = Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[12].DiceValue
			if class.ClassUUID == "92cd50b6-eb1b-4824-8adb-853e90c34c90" and class.Level > 14 and levelmap == "D8" then
				Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[12].DiceValue="D10"
			end
		end
	elseif level < 15 then
		for _,class in pairs(Ext.Entity.Get(character).Classes.Classes) do
			local levelmap = Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[12].DiceValue
			if class.ClassUUID == "92cd50b6-eb1b-4824-8adb-853e90c34c90" and class.Level < 15 and levelmap == "D10" then
				Ext.StaticData.Get("d627b1c2-d215-476d-a3b1-3ba652d1c0c3","LevelMap").LevelMaps[12].DiceValue="D8"
			end
		end
	end
end)

-- Master's Flourish
Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(character, status, causee, _)
	if status == "MASTERS_FLOURISH" then
		local pbfdef = Ext.Stats.Get("Projectile_BladeFlourish_Defensive_EXP")
		local pbfmob = Ext.Stats.Get("Projectile_BladeFlourish_Mobile_EXP")
		local pbfssh = Ext.Stats.Get("Projectile_BladeFlourish_Slashing_EXP")
		local tbfdef = Ext.Stats.Get("Target_BladeFlourish_Defensive_EXP")
		local tbfmob = Ext.Stats.Get("Target_BladeFlourish_Mobile_EXP")
		local zbfssh = Ext.Stats.Get("Zone_BladeFlourish_Slashing_EXP")
		pbfdef.TooltipDamageList = "DealDamage(MainRangedWeapon+1d6, MainWeaponDamageType)"
		pbfmob.TooltipDamageList = "DealDamage(MainRangedWeapon+1d6, MainWeaponDamageType)"
		pbfssh.TooltipDamageList = "DealDamage(MainRangedWeapon+1d6, MainWeaponDamageType)"
		tbfdef.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d6, MainWeaponDamageType)"
		tbfmob.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d6, MainWeaponDamageType)"
		zbfssh.TooltipDamageList = "DealDamage(MainMeleeWeapon+1d6, MainWeaponDamageType)"
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
		local pbfdef = Ext.Stats.Get("Projectile_BladeFlourish_Defensive_EXP")
		local pbfmob = Ext.Stats.Get("Projectile_BladeFlourish_Mobile_EXP")
		local pbfssh = Ext.Stats.Get("Projectile_BladeFlourish_Slashing_EXP")
		local tbfdef = Ext.Stats.Get("Target_BladeFlourish_Defensive_EXP")
		local tbfmob = Ext.Stats.Get("Target_BladeFlourish_Mobile_EXP")
		local zbfssh = Ext.Stats.Get("Zone_BladeFlourish_Slashing_EXP")
		pbfdef.TooltipDamageList = "DealDamage(MainRangedWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		pbfmob.TooltipDamageList = "DealDamage(MainRangedWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		pbfssh.TooltipDamageList = "DealDamage(MainRangedWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		tbfdef.TooltipDamageList = "DealDamage(MainMeleeWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		tbfmob.TooltipDamageList = "DealDamage(MainMeleeWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		zbfssh.TooltipDamageList = "DealDamage(MainMeleeWeapon+LevelMapValue(BardicInspiration), MainWeaponDamageType)"
		pbfdef:Sync()
		pbfmob:Sync()
		pbfssh:Sync()
		tbfdef:Sync()
		tbfmob:Sync()
		zbfssh:Sync()
	end
end)