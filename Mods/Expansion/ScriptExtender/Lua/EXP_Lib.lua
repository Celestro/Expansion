-- Data helpers
function EXP_RemoveRepeatedSemicolon(s)
    s = string.gsub(s, ";;+", ";")
    return string.gsub(s, "^;", "")
end

function EXP_HasValueInList(list, value)
    for _, v in pairs(list) do
        if v == value then
            return true
        end
    end
    return false
end

-- Checks if the stat has the parent in its using tree
function EXP_StatHasParent(stat, parentName)
    if stat.Name == parentName then
        return true
    end
    if stat.Using ~= nil and stat.Using ~= "" then
        return EXP_StatHasParent(Ext.Stats.Get(stat.Using), parentName)
    end
    return false
end

-- Checks if the character stat object is _Hero or inherits it
function EXP_CharIsHero(char)
    return char ~= nil and string.find(char.Passives, "WeaponThrow") and string.find(char.Passives, "CombatStartAttack")
end

-- Static Data helpers
function EXP_ApplyStaticData(defTable)
    for defType, defList in pairs(defTable) do
        for guid, changes in pairs (defList) do
            local resource = Ext.StaticData.Get(guid, defType)
--            _D("\n" .. defType .. ": " .. guid)
            for attribute, replacement in pairs(changes) do
                local newValue
                if type(resource[attribute]) == "string" then
                    if replacement.Type == "add" then
--                        _D("\tAdding to " .. attribute .. " - " .. replacement.Value)
                        newValue = replacement.Value .. ";" .. resource[attribute]
                    elseif replacement.Type == "overwrite" then
--                        _D("\tOverwriting " .. attribute .. " - " .. replacement.Value)
                        newValue = replacement.Value
                    end
                    resource[attribute] = newValue
                elseif type(resource[attribute]) == "userdata"  then
                    if replacement.Type == "add" then
--                        _D("\tAdding to " .. attribute .. " userdata")
                        newValue = Ext.Types.Serialize(resource[attribute])
                        for _, value in pairs(replacement.Value) do
                            table.insert(newValue, value)
                        end
                    elseif replacement.Type == "overwrite" then
--                        _D("\tOverwriting " .. attribute .. " userdata")
                        newValue = replacement.Value
                    end
                    Ext.Types.Unserialize(resource[attribute], newValue)
                elseif type(resource[attribute]) == "boolean" then
                    if replacement.Type == "overwrite" then
--                        _D("\tOverwriting " .. attribute .. " boolean")
                        newValue = replacement.Value
                    end
                    resource[attribute] = newValue
                else
--                    _D("StaticData Type not mapped: " .. attribute .. " - " .. type(resource[attribute]))
                end
            end
        end
    end
end

-- Creates a Set from a list
function EXP_Set(list)
    local set = {}
    for _, l in ipairs(list) do
        set[l] = true
    end
    return set
end

-- Adds an element to a Set
function EXP_Set_Add(set, elem)
    if not set[elem] then
        set[elem] = true
    end
end

-- Concatenates the elements of set to a string, using sep as a separator
function EXP_Set_Concat(set, sep)
    local str = ""
    for elem in pairs(set) do
        local prefix = ""
        if str ~= "" then
            prefix = sep
        end
        str = str .. prefix .. tostring(elem)
    end
    return str
end

function CentralizedString(text, width)
    width = width or 100
    local spaces = (width - string.len(text))//2
    return string.rep(" ", spaces) .. text
end

function EXP_IsInteger(v)
    return type(v) == "number" and math.floor(v) == v
end

function EXP_IsIntegerBetween(v, min, max)
    return EXP_IsInteger(v) and v >= min and v <= max
end

-- Converts a string or number to a boolean
function EXP_Bool(v)
    if type(v) == "boolean" then
        return v
    end
    if type(v) == "string" then
        if v == "false" or v == "No" then
            return false
        end
        return true

    elseif type(v) == "number" then
        if v == 0 or v ~= v then
            return false
        end
        return true
    end

    return false
end

-- Print only if the value is set (not commented) on the table
EXP_PrintTable_ModOptions = 0

local ENUM_EXP_PrintTable = EXP_Set {
    EXP_PrintTable_ModOptions,
}

EXP_PrintTypeInfo = "info"
EXP_PrintTypeWarning = "warning"
EXP_PrintTypeError = "error"

function EXP_PrintIfDebug(text, debug, level)
    if (type(debug) == "boolean" and debug) or ENUM_EXP_PrintTable[debug] then
        if type(text) == "string" then
            if level == EXP_PrintTypeError then
                Ext.Utils.PrintError(text)
            elseif level == EXP_PrintTypeWarning then
                Ext.Utils.PrintWarning(text)
            else
                Ext.Utils.Print(text)
            end
        else
            _D(text)
        end
    end
end