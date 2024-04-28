function EXP_XP75Config()
	Ext.IO.AddPathOverride("Public/Expansion/Stats/Generated/Data/XPData_Expansion_D_Base.txt", "Public/Expansion/Stats/Generated/Data/XPData_Expansion_C_0.75x.txt")
end

function EXP_XP50Config()
	Ext.IO.AddPathOverride("Public/Expansion/Stats/Generated/Data/XPData_Expansion_D_Base.txt", "Public/Expansion/Stats/Generated/Data/XPData_Expansion_B_0.50x.txt")
end

function EXP_XP25Config()
	Ext.IO.AddPathOverride("Public/Expansion/Stats/Generated/Data/XPData_Expansion_D_Base.txt", "Public/Expansion/Stats/Generated/Data/XPData_Expansion_A_0.25x.txt")
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

function writing()
	local default = '{"OptionalFeatures":{"Barbarian":{"Enabled":true},"Bard":{"Enabled":true},"Cleric":{"Enabled":true},"Druid":{"Enabled":true},"Fighter":{"Enabled":true},"Monk":{"Enabled":true},"Paladin":{"Enabled":true},"Ranger":{"Enabled":true},"Rogue":{"Enabled":true},"Sorcerer":{"Enabled":true},"Sorcerer Subclasses 14th Level Feature":{"Enabled":false},"Wizard":{"Enabled":true},"Wizard Bladesinger":{"Enabled":false}},"XPRate":{"Base XP":{"Enabled":true},"75% XP":{"Enabled":false},"50% XP":{"Enabled":false},"25% XP":{"Enabled":false}}}'
	local defaultJson = formatting(default)
	Ext.IO.SaveFile("Expansion.json", defaultJson)
end

function reading()
	local status, file = pcall(Ext.IO.LoadFile, "Expansion.json")
	if not status or not file then
		print(string.format("Expansion: Creating configuration at %%LOCALAPPDATA%%\\Larian Studios\\Baldur's Gate 3\\Script Extender\\Expansion.json"))
		writing()
		status, file = pcall(Ext.IO.LoadFile, "Expansion.json")
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

EXP_Barbarianconfig = Table["OptionalFeatures"]["Barbarian"]
EXP_Bardconfig = Table["OptionalFeatures"]["Bard"]
EXP_Clericconfig = Table["OptionalFeatures"]["Cleric"]
EXP_Druidconfig = Table["OptionalFeatures"]["Druid"]
EXP_Fighterconfig = Table["OptionalFeatures"]["Fighter"]
EXP_Monkconfig = Table["OptionalFeatures"]["Monk"]
EXP_Paladinconfig = Table["OptionalFeatures"]["Paladin"]
EXP_Rangerconfig = Table["OptionalFeatures"]["Ranger"]
EXP_Rogueconfig = Table["OptionalFeatures"]["Rogue"]
EXP_Sorcererconfig = Table["OptionalFeatures"]["Sorcerer"]
EXP_Sorcerer14thconfig = Table["OptionalFeatures"]["Sorcerer Subclasses 14th Level Feature"]
EXP_Wizardconfig = Table["OptionalFeatures"]["Wizard"]
EXP_Bladesingerconfig = Table["OptionalFeatures"]["Wizard Bladesinger"]

	local EXP_XPBase = Table["XPRate"]["Base XP"]
	local EXP_XP75 = Table["XPRate"]["75% XP"]
	local EXP_XP50 = Table["XPRate"]["50% XP"]
	local EXP_XP25 = Table["XPRate"]["25% XP"]
	local basexpenabled = EXP_XPBase["Enabled"]
	local sfivexpenabled = EXP_XP75["Enabled"]
	local fiftyxpenabled = EXP_XP50["Enabled"]
	local tfivexpenabled = EXP_XP25["Enabled"]

	if	basexpenabled == true and sfivexpenabled ~= true and fiftyxpenabled ~= true and tfivexpenabled ~= true then
		print(string.format("Expansion: Base XP enabled."))
	elseif basexpenabled ~= true and sfivexpenabled == true and fiftyxpenabled ~= true and tfivexpenabled ~= true then
		EXP_XP75Config()
		print(string.format("Expansion: 3/4 of base XP enabled."))
	elseif basexpenabled ~= true and sfivexpenabled ~= true and fiftyxpenabled == true and tfivexpenabled ~= true then
		EXP_XP50Config()
		print(string.format("Expansion: 1/2 of base XP enabled."))
	elseif basexpenabled ~= true and sfivexpenabled ~= true and fiftyxpenabled ~= true and tfivexpenabled == true then
		EXP_XP25Config()
		print(string.format("Expansion: 1/4 of base XP enabled."))
	elseif basexpenabled == true and sfivexpenabled == true and fiftyxpenabled ~= true and tfivexpenabled ~= true then
		EXP_XP75Config()
		print(string.format("Expansion: Multiple XP rates were selected so going with the lowest. 3/4 of base XP enabled."))
	elseif fiftyxpenabled == true and tfivexpenabled ~= true and (basexpenabled == true or sfivexpenabled == true) then
		EXP_XP50Config()
		print(string.format("Expansion: Multiple XP rates were selected so going with the lowest. 1/2 of base XP enabled."))
	elseif tfivexpenabled == true and (basexpenabled == true or sfivexpenabled == true or fiftyxpenabled == true) then
		EXP_XP25Config()
		print(string.format("Expansion: Multiple XP rates were selected so going with the lowest. 1/4 of base XP enabled."))
	elseif	basexpenabled ~= true and sfivexpenabled ~= true and fiftyxpenabled ~= true and tfivexpenabled ~= true then
		print(string.format("Expansion: No XP rate was selected. Base XP enabled."))
	end