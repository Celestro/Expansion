--[[local userOptionsPath = "EXP_ModOptions.json"
local userOptions = {}

local currentMod = Ext.Mod.GetMod(ModuleUUID).Info
local modOptionsPath = "Mods/" .. currentMod.Directory .. "/ScriptExtender/ModOptions.json"
ModOptions = {}

local function EXP_LoadUserOptions(shouldPrint)
    EXP_PrintIfDebug(CentralizedString("Searching for User ModOptions.json"), shouldPrint)
    local optionsFile = Ext.IO.LoadFile(userOptionsPath)
    if optionsFile == nil or optionsFile == "" then
        EXP_PrintIfDebug(CentralizedString("User ModOptions.json not found"), shouldPrint)
        return
    end

    local options = Ext.Json.Parse(optionsFile)
    if options[ModuleUUID] ~= nil then
        EXP_PrintIfDebug(CentralizedString("Found User ModOptions for: " .. ModuleUUID), shouldPrint)
        userOptions = options[ModuleUUID]
    else
        EXP_PrintIfDebug(CentralizedString("Not found User ModOptions for: " .. ModuleUUID), shouldPrint)
    end
end

local function parseEnabledOption(optionName, attributes, enabledOptions, dependencies, conflicts)
    EXP_Set_Add(enabledOptions, optionName)

    for _, dep in pairs(attributes.dependencies) do
        EXP_Set_Add(dependencies, dep)
    end

    for _, con in pairs(attributes.conflicts) do
        EXP_Set_Add(conflicts, con)
    end
end

local function checkMissingDependencies(enabledOptions, dependencies, missingDependencies)
    for dep in pairs(dependencies) do
        if (enabledOptions[dep] == nil or not enabledOptions[dep]) and not missingDependencies[dep] then
            EXP_Set_Add(missingDependencies, dep)
            if next(ModOptions[dep].dependencies) ~= nil then
                checkMissingDependencies(enabledOptions, EXP_Set(ModOptions[dep].dependencies), missingDependencies)
            end
        end
    end
end

local function EXP_ValidateModOptions(forceDependencies, shouldPrint)
    forceDependencies = forceDependencies or false
    local enabledOptions = {}
    local dependencies = {}
    local conflicts = {}
    for optionName, attributes in pairs(ModOptions) do
        if attributes.enabled then
            parseEnabledOption(optionName, attributes, enabledOptions, dependencies, conflicts)
        end
    end

    local ok = true
    local missingDependencies = {}
    checkMissingDependencies(enabledOptions, dependencies, missingDependencies)
    if next(missingDependencies) ~= nil then
        ok = false
        EXP_PrintIfDebug(CentralizedString("Missing option dependencies: " .. EXP_Set_Concat(missingDependencies, ",")), shouldPrint, EXP_PrintTypeWarning)
        if forceDependencies then
            for dep in pairs(missingDependencies) do
                ModOptions[dep].enabled = true
                parseEnabledOption(dep, ModOptions[dep], enabledOptions, dependencies, conflicts)
            end
            EXP_PrintIfDebug(CentralizedString("Missing dependencies were automatically enabled!"), shouldPrint, EXP_PrintTypeWarning)
            -- To-do: change to "ShowError" without "AndExitGame" when available
            if shouldPrint then
                Ext.Utils.ShowErrorAndExitGame("Expansion\nYour Mod Options had the following missing dependencies, which were " ..
                "automatically enabled to avoid unexpected behaviors:\n" .. EXP_Set_Concat(missingDependencies, ","))
            end
        end
    end

    local conflictsDetected = {}
    for con in pairs(conflicts) do
        if enabledOptions[con] then
            EXP_Set_Add(conflictsDetected, con)
        end
    end
    if next(conflictsDetected) ~= nil then
        ok = false
        EXP_PrintIfDebug("\n====================================================================================================", shouldPrint, EXP_PrintTypeError)
        EXP_PrintIfDebug(CentralizedString("Conflicting options: " .. EXP_Set_Concat(conflictsDetected, ",")), shouldPrint, EXP_PrintTypeError)
        EXP_PrintIfDebug("====================================================================================================\n", shouldPrint, EXP_PrintTypeError)
        -- Ext.Utils.ShowErrorAndExitGame("Zerd's EXP\nYour Mod Options had conflicting options:\n" .. EXP_Set_Concat(conflictsDetected, ","))
    end

    if ok then
        EXP_PrintIfDebug(CentralizedString("---- Mod Validation OK ----"), shouldPrint)
    end
end

function EXP_PrintConfig(shouldPrint)
    if not shouldPrint then
        return
    end
    print("\n\27[36mOptions:")
    local options = {}
    for optionName, attributes in pairs(ModOptions) do
        local text = "\27[36m"
        if IsModOptionEnabled(optionName) then
            text = text .. optionName .. ":\27[32m enabled"
        else
            text = text .. optionName .. ":\27[31m disabled"
        end
        table.insert(options, text)
    end
    table.sort(options)
    print(table.concat(options,"\n") .. "\27[0m")
end

function EXP_LoadModOptions(shouldPrint)
    EXP_PrintIfDebug("\n====================================================================================================", shouldPrint)
    EXP_PrintIfDebug(CentralizedString("[EXP:Config.lua] Mod Options") .. "\n", shouldPrint)

    EXP_LoadUserOptions(shouldPrint)

    EXP_PrintIfDebug(CentralizedString("Searching for ModOptions.json at: " .. modOptionsPath), shouldPrint)
    local optionsFile = Ext.IO.LoadFile(modOptionsPath, "data")
    if optionsFile == nil or optionsFile == "" then
        EXP_PrintIfDebug(CentralizedString("ModOptions.json not found"), shouldPrint, EXP_PrintTypeWarning)
        return
    end

    ModOptions = Ext.Json.Parse(optionsFile)
    for optionName, attributes in pairs(ModOptions) do
        local userOption = userOptions[optionName]
        local enabled = attributes.enabled
        if userOption ~= nil  then
            if userOption.enabled ~= nil then
                enabled = userOption.enabled
            end

            enabled  = userOption.enabled or enabled
        end
        attributes.enabled = enabled

        local filteredDependencies = {}
        for _, dep in pairs(attributes.dependencies) do
            if ModOptions[dep] ~= nil then
                table.insert(filteredDependencies, dep)
            else
                EXP_PrintIfDebug(CentralizedString("Non-existing dependency on ModOptions: " .. dep), shouldPrint, EXP_PrintTypeWarning)
            end
        end
        attributes.dependencies = filteredDependencies

        local filteredConflicts = {}
        for _, con in pairs(attributes.conflicts) do
            if ModOptions[con] ~= nil then
                table.insert(filteredConflicts, con)
            else
                EXP_PrintIfDebug(CentralizedString("Non-existing conflict on ModOptions: " .. con), shouldPrint, EXP_PrintTypeWarning)
            end
        end
        attributes.conflicts = filteredConflicts
    end

    EXP_ValidateModOptions(true, shouldPrint)
    EXP_PrintConfig(shouldPrint)

    EXP_PrintIfDebug("====================================================================================================\n", shouldPrint)
end

function IsModOptionEnabled(modOption)
    return ModOptions[modOption] ~= nil and ModOptions[modOption].enabled
end--]]