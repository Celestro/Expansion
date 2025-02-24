--[[function EXP_XP50Config()
	Ext.IO.AddPathOverride("Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_C_0.75x.txt", "Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_B_0.50x.txt")
end

function EXP_XP33Config()
	Ext.IO.AddPathOverride("Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_C_0.75x.txt", "Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_B_0.33x.txt")
end

function EXP_XP25Config()
	Ext.IO.AddPathOverride("Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_C_0.75x.txt", "Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_A_0.25x.txt")
end

function EXP_XPScaledConfig()
	Ext.IO.AddPathOverride("Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_C_0.75x.txt", "Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_A_Scaled.txt")
end

function EXP_XPScaled2Config()
	Ext.IO.AddPathOverride("Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_C_0.75x.txt", "Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_A_Scaled_2.txt")
end

function EXP_12thLevelConfig()
	Ext.IO.AddPathOverride("Public/Expansion/Stats/Generated/Data/XPData_Expansion.txt", "Public/ExpansionXP/Stats/Generated/Data/Empty.txt")
	Ext.IO.AddPathOverride("Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_C_0.75x.txt", "Public/ExpansionXP/Stats/Generated/Data/Empty.txt")
	Ext.IO.AddPathOverride("Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_B_0.50x.txt", "Public/ExpansionXP/Stats/Generated/Data/Empty.txt")
	Ext.IO.AddPathOverride("Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_B_0.33x.txt", "Public/ExpansionXP/Stats/Generated/Data/Empty.txt")
	Ext.IO.AddPathOverride("Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_A_0.25x.txt", "Public/ExpansionXP/Stats/Generated/Data/Empty.txt")
	Ext.IO.AddPathOverride("Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_A_Scaled.txt", "Public/ExpansionXP/Stats/Generated/Data/Empty.txt")
	Ext.IO.AddPathOverride("Public/ExpansionXP/Stats/Generated/Data/XPData_Expansion_A_Scaled_2.txt", "Public/ExpansionXP/Stats/Generated/Data/Empty.txt")
end

function formatting(file)
	local result = ""
	local space = 0
	local str = false
	local character = ""
	for i = 1, #file do
		character = file:sub(i, i)
		if character == '"' and file:sub(i - 1, i - 1) ~= "\\" then
			str = not str
		end

		if str then
			result = result .. character
		else
			if character == "{" or character == "[" then
				space = space + 2
				result = result .. character .. "\n" .. string.rep(" ", space)
			elseif character == "}" or character == "]" then
				space = space - 2
				result = result .. "\n" .. string.rep(" ", space) .. character
			elseif character == "," then
				result = result .. character .. "\n" .. string.rep(" ", space)
			else
				result = result .. character
			end
		end
	end
	return result
end

config = {}
folder = "Expansion"
filepath = "Expansion.json"

function config.modpath(filepath)
    return folder .. '/' .. filepath
end

function writing()
	local default = '{"Optional Features":{"Barbarian":{"Enabled":true},"Bard":{"Enabled":true},"Cleric":{"Enabled":true},"Druid":{"Enabled":true},"Fighter":{"Enabled":true},"Monk":{"Enabled":true},"Paladin":{"Enabled":true},"Ranger":{"Enabled":true},"Rogue":{"Enabled":true},"Sorcerer":{"Enabled":true},"Wizard":{"Enabled":true}},"XP Rate":{"50% XP":{"Enabled":false},"33% XP":{"Enabled":false},"25% XP":{"Enabled":false},"Rescaled XP":{"Enabled":false},"Holzwurm93s XP":{"Enabled":false},"12th Level Max":{"Enabled":false}},"Feats":{"2nd Level":{"Enabled":false},"2nd & 3rd Level":{"Enabled":false},"Every Level":{"Enabled":false},"Every 2nd Level":{"Enabled":false},"Every 3rd Level":{"Enabled":false}},"Miscellaneous":{"Sorcerer Subclasses 14th Level Feature":{"Enabled":false},"Wizard Bladesinger":{"Enabled":false}}}'
	local defaultJson = formatting(default)
    Ext.IO.SaveFile(config.modpath(filepath), defaultJson)
end

function reading()
	local status, file = pcall(Ext.IO.LoadFile, config.modpath(filepath))
	if not status or not file then
		print(string.format("Expansion: Creating configuration at %%LOCALAPPDATA%%\\Larian Studios\\Baldur's Gate 3\\Script Extender\\Expansion\\Expansion.json"))
		writing()
		status, file = pcall(Ext.IO.LoadFile, config.modpath(filepath))
		if not status or not file then
			print("ERROR: Failed to load config file after writing default config")
			return nil
		end
	end

	local status, result = pcall(Ext.Json.Parse, file)
	if not status then
		return nil
	end
	Table = result
end

reading()

EXP_Barbarianconfig = Table["Optional Features"]["Barbarian"]
EXP_Bardconfig = Table["Optional Features"]["Bard"]
EXP_Clericconfig = Table["Optional Features"]["Cleric"]
EXP_Druidconfig = Table["Optional Features"]["Druid"]
EXP_Fighterconfig = Table["Optional Features"]["Fighter"]
EXP_Monkconfig = Table["Optional Features"]["Monk"]
EXP_Paladinconfig = Table["Optional Features"]["Paladin"]
EXP_Rangerconfig = Table["Optional Features"]["Ranger"]
EXP_Rogueconfig = Table["Optional Features"]["Rogue"]
EXP_Sorcererconfig = Table["Optional Features"]["Sorcerer"]
EXP_Wizardconfig = Table["Optional Features"]["Wizard"]
EXP_Sorcerer14thconfig = Table["Miscellaneous"]["Sorcerer Subclasses 14th Level Feature"]
EXP_Bladesingerconfig = Table["Miscellaneous"]["Wizard Bladesinger"]
EXP_2ndLevelFeatconfig = Table["Feats"]["2nd Level"]
EXP_2nd3rdLevelFeatconfig = Table["Feats"]["2nd & 3rd Level"]
EXP_EveryLevelFeatconfig = Table["Feats"]["Every Level"]
EXP_Every2ndLevelFeatconfig = Table["Feats"]["Every 2nd Level"]
EXP_Every3rdLevelFeatconfig = Table["Feats"]["Every 3rd Level"]

	local EXP_12thLevelMax = Table["XP Rate"]["12th Level Max"]
	local EXP_XP50 = Table["XP Rate"]["50% XP"]
	local EXP_XP33 = Table["XP Rate"]["33% XP"]
	local EXP_XP25 = Table["XP Rate"]["25% XP"]
	local EXP_XPScaled = Table["XP Rate"]["Rescaled XP"]
	local EXP_XPScaled_2 = Table["XP Rate"]["Holzwurm93s XP"]
	local twelfthlevel = EXP_12thLevelMax["Enabled"]
	local fiftyxpenabled = EXP_XP50["Enabled"]
	local tthreeexpenabled = EXP_XP33["Enabled"]
	local tfivexpenabled = EXP_XP25["Enabled"]
	local scaledenabled = EXP_XPScaled["Enabled"]
	local scaledtwoenabled = EXP_XPScaled_2["Enabled"]

	if Ext.Mod.IsModLoaded("3e0ce40c-c129-408c-a2f7-7291152f9d28") then
		if fiftyxpenabled ~= true and tthreeexpenabled ~= true and tfivexpenabled ~= true and twelfthlevel ~= true and scaledenabled ~= true and scaledtwoenabled ~= true then
			print(string.format("Expansion: 3/4 of base XP enabled."))
		elseif fiftyxpenabled == true and tthreeexpenabled ~= true and tfivexpenabled ~= true and twelfthlevel ~= true and scaledenabled ~= true and scaledtwoenabled ~= true then
			EXP_XP50Config()
			print(string.format("Expansion: 1/2 of base XP enabled."))
		elseif fiftyxpenabled ~= true and tthreeexpenabled == true and tfivexpenabled ~= true and twelfthlevel ~= true and scaledenabled ~= true and scaledtwoenabled ~= true then
			EXP_XP33Config()
			print(string.format("Expansion: 1/3 of base XP enabled."))
		elseif fiftyxpenabled ~= true and tthreeexpenabled ~= true and tfivexpenabled == true and twelfthlevel ~= true and scaledenabled ~= true and scaledtwoenabled ~= true then
			EXP_XP25Config()
			print(string.format("Expansion: 1/4 of base XP enabled."))
		elseif fiftyxpenabled ~= true and tthreeexpenabled ~= true and tfivexpenabled ~= true and twelfthlevel ~= true and scaledenabled == true and scaledtwoenabled ~= true then
			EXP_XPScaledConfig()
			print(string.format("Expansion: Alternate XP rate scaling enabled."))
		elseif fiftyxpenabled ~= true and tthreeexpenabled ~= true and tfivexpenabled ~= true and twelfthlevel ~= true and scaledenabled ~= true and scaledtwoenabled == true then
			EXP_XPScaled2Config()
			print(string.format("Expansion: 2nd Alternate XP rate scaling enabled."))
		elseif fiftyxpenabled == true and tthreeexpenabled ~= true and tfivexpenabled ~= true and twelfthlevel ~= true and (scaledenabled ~= true or scaledenabled == true or scaledtwoenabled ~= true or scaledtwoenabled == true) then
			EXP_XP50Config()
			print(string.format("Expansion: Multiple XP rates were selected so going with the lowest. 1/2 of base XP enabled."))
		elseif tthreeexpenabled == true and tfivexpenabled ~= true and (sfivexpenabled == true or fiftyxpenabled == true or scaledenabled == true or scaledtwoenabled == true) and twelfthlevel ~= true then
			EXP_XP33Config()
			print(string.format("Expansion: Multiple XP rates were selected so going with the lowest. 1/3 of base XP enabled."))
		elseif tfivexpenabled == true and (sfivexpenabled == true or tthreeexpenabled == true or fiftyxpenabled == true or scaledenabled == true or scaledtwoenabled == true) and twelfthlevel ~= true then
			EXP_XP25Config()
			print(string.format("Expansion: Multiple XP rates were selected so going with the lowest. 1/4 of base XP enabled."))
		elseif tfivexpenabled ~= true and tthreeexpenabled ~= true and fiftyxpenabled ~= true and twelfthlevel ~= true and scaledenabled ~= true and scaledtwoenabled ~= true then
			print(string.format("Expansion: No XP rate chosen. Using 3/4 EXP by default."))
		elseif	twelfthlevel == true then
			EXP_12thLevelConfig()
			print(string.format("Expansion: Maximum level is set to 12 and XP rate changed to base game's."))
		end
	else
		return
		print(string.format("Expansion: Expansion XP optional mod isn't loaded. Ignoring XP Rate entries."))
	end--]]