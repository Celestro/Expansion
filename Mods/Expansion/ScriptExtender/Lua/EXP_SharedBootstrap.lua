-- Lib
Ext.Require("EXP_Lib.lua")

-- Config
Ext.Require("EXP_Config.lua")
--EXP_LoadModOptions()

local EXP_Barbarian_OptionalFeatures

---------------------------------------- STATS FUNCTION ----------------------------------------

function EXP_Barbarian()
    EXP_ApplyStaticData(EXP_Barbarian_OptionalFeatures)
end

--------------------------------------- BARBARIAN ---------------------------------------

EXP_Barbarian_OptionalFeatures = {
    ["Progression"] = {
--[[        ["0d4a6b4b-8162-414b-81ef-1838e36e778a"] = {
            ["SelectSkills"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
					Amount = "1",
					Arg3 = "",
					UUID = "233793b3-838a-4d4e-9d68-1e0a1089aba5"
                }
				},
            },
        },
        ["38f50ca6-9511-4b32-81e6-bb9a8a941a3d"] = {
            ["SelectSkills"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
					Amount = "1",
					Arg3 = "",
					UUID = "233793b3-838a-4d4e-9d68-1e0a1089aba5"
                }
				},
            },
        },--]]
        ["2ad3b99d-3dae-4c9e-b8b0-8d2e4e0da805"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "InstinctivePounce",
            },
        },
    },
}

----------------------------------------- BARD ------------------------------------------

local EXP_Bard_OptionalFeatures

function EXP_Bard()
    EXP_ApplyStaticData(EXP_Bard_OptionalFeatures)
end

EXP_Bard_OptionalFeatures = {
    ["Progression"] = {
        ["7a2f66b5-7555-49f2-833b-f3d79affc7ca"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "MagicalInspiration",
            },
        },
    },
}

local EXP_Cleric_OptionalFeatures

function EXP_Cleric()
    EXP_ApplyStaticData(EXP_Cleric_OptionalFeatures)
end

---------------------------------------- CLERIC -----------------------------------------

EXP_Cleric_OptionalFeatures = {
    ["Progression"] = {
        ["ef18265f-dda6-4eb6-8dd0-b14c57202c33"] = {
            ["Boosts"] = {
                ["Type"] = "add",
                ["Value"] = "ActionResource(DivinePowerPoint,1,0)",
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "HarnessDivinePower",
            },
        },
        ["1ba0c22a-2655-4f3c-8bf8-f3314587ccaa"] = {
            ["Boosts"] = {
                ["Type"] = "add",
                ["Value"] = "ActionResource(DivinePowerPoint,1,0)",
            },
        },
        ["4cfd9e91-38ef-4b24-8a2a-9b736be91cf8"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "BlessedStrikes",
            },
        },
    },
}

local EXP_Druid_OptionalFeatures

function EXP_Druid()
    EXP_ApplyStaticData(EXP_Druid_OptionalFeatures)
end

----------------------------------------- DRUID -----------------------------------------

EXP_Druid_OptionalFeatures = {
    ["Progression"] = {
        ["95322dde-349a-4101-964f-9aa46abd890b"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "WildCompanion",
            },
        },
    },
}

local EXP_Fighter_OptionalFeatures

function EXP_Fighter()
    EXP_ApplyStaticData(EXP_Fighter_OptionalFeatures)
end

---------------------------------------- FIGHTER ----------------------------------------

EXP_Fighter_OptionalFeatures = {
    ["Progression"] = {
        ["aafbbc41-16e8-4296-a283-a2c5fdd0625b"] = {
            ["Boosts"] = {
                ["Type"] = "add",
                ["Value"] = "ActionResource(ActionSurgeCharge,1,0)",
            },
        },
    },
}

local EXP_Monk_OptionalFeatures

function EXP_Monk()
    EXP_ApplyStaticData(EXP_Monk_OptionalFeatures)
end

----------------------------------------- MONK ------------------------------------------

EXP_Monk_OptionalFeatures = {
    ["Progression"] = {
        ["296468cb-3640-4460-9f44-b30ee820a9ed"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "KiFueledAttack",
            },
        },
        ["e2bd97c2-4de1-43eb-bbeb-6383c472a4a2"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "QuickenedHealing",
            },
        },
        ["7b354b75-537f-464e-a28d-cafa72323ab9"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "FocusedAim",
            },
        },
    },
}

local EXP_Paladin_OptionalFeatures

function EXP_Paladin()
    EXP_ApplyStaticData(EXP_Paladin_OptionalFeatures)
end

---------------------------------------- PALADIN ----------------------------------------

EXP_Paladin_OptionalFeatures = {
    ["Progression"] = {
        ["31c12f48-d62f-4e83-b475-10ed9068c9dd"] = {
            ["Boosts"] = {
                ["Type"] = "add",
                ["Value"] = "ActionResource(DivinePowerPoint,1,0)",
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "HarnessDivinePower",
            },
		},
        ["4b6c4bc2-641e-456a-a7a3-9b343fb5d52a"] = {
            ["Boosts"] = {
                ["Type"] = "add",
                ["Value"] = "ActionResource(DivinePowerPoint,1,0)",
            },
        },
    },
}

local EXP_Ranger_OptionalFeatures

function EXP_Ranger()
    EXP_ApplyStaticData(EXP_Ranger_OptionalFeatures)
end

---------------------------------------- RANGER -----------------------------------------

EXP_Ranger_OptionalFeatures = {
    ["Progression"] = {
        ["e6179c57-47e9-4f83-831e-28b73f4b5d0d"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "PrimalAwareness",
            },
		},
        ["774f7a73-3a29-404c-898b-e8810f41a8ba"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "FavoredEnemy",
                        UUID = "d0f13dda-eb37-41f5-aea5-2683f0229e2e"
                },
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "NaturalExplorer",
                        UUID = "f9f5e812-acff-4cbe-b824-265deb89587b"
                }
                },
            },
		},
        ["26e69682-2b1b-48c5-ad8d-6e6e31601a8b"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "",
                        UUID = "3b5d4e6b-d6f6-4dd9-a523-045b75daed18"
                },
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "FavoredEnemy",
                        UUID = "d0f13dda-eb37-41f5-aea5-2683f0229e2e"
                },
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "NaturalExplorer",
                        UUID = "d7f8771d-a932-4a4a-97aa-a608d0130e2f"
                }
                },
            },
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                {}
                },
            },
		},
    },
    ["PassiveList"] = {
        ["d0f13dda-eb37-41f5-aea5-2683f0229e2e"] = {
            ["Passives"] = {
                ["Type"] = "add",
                ["Value"] = {
                    "FavoredEnemy_FavoredFoe",
                },
            },
		},
        ["72c63024-60af-486e-a180-c7aeee5d77c1"] = {
            ["Passives"] = {
                ["Type"] = "add",
                ["Value"] = {
                    "DeftExplorer_Canny",
                },
            },
		},
    },
}

local EXP_Rogue_OptionalFeatures

function EXP_Rogue()
    EXP_ApplyStaticData(EXP_Rogue_OptionalFeatures)
end

----------------------------------------- ROGUE -----------------------------------------

EXP_Rogue_OptionalFeatures = {
    ["Progression"] = {
        ["6f8d3e70-9b20-4fe0-914f-0f8f19206329"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "SteadyAim;SteadyAim_Jump",
            },
        },
    },
}

----------------------------------- ARCANE TRICKSTER ------------------------------------

EXP_ArcaneTrickster_Fix = {
    ["Progression"] = {
        ["53ecef19-2f1c-4d4b-81e9-11a72ad3e0ac"] = {
            ["Boosts"] = {
                ["Type"] = "overwrite",
                ["Value"] = "ActionResource(SpellSlot,1,2)",
            },
        },
    },
}

local EXP_Sorcerer_OptionalFeatures

function EXP_Sorcerer()
    EXP_ApplyStaticData(EXP_Sorcerer_OptionalFeatures)
end

--------------------------------------- SORCERER ----------------------------------------

EXP_Sorcerer_OptionalFeatures = {
    ["Progression"] = {
        ["e07bd66e-16af-47ec-aa19-cc16da0d8c3a"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "MagicalGuidance",
            },
        },
    },
}

------------------------------- RAW's Two Weapon Fighting -------------------------------

function EXP_ModifyRAWTwoWeaponFighting()

	if Ext.Mod.IsModLoaded("f19c68ed-70be-4c3d-b610-e94afc5c5103") then
		local passive = Ext.Stats.Get("RAW_OffHand_Enabler")
		passive.Conditions = passive.Conditions .. " and not SpellId('Target_BoomingBlade') and not SpellId('Target_GreenFlameBlade')"
	end
end

------------------------------------- Haste Attack -------------------------------------

function EXP_HasteAttack()

	if Ext.Mod.IsModLoaded("f19c68ed-70be-4c3d-b610-e94afc5c5103") then
		local status = Ext.Stats.Get("HASTE")
		local statusa = Ext.Stats.Get("HASTE_ATTACK")
		status.Passives = ""
		statusa.Passives = "RAW_Haste"
		statusa.RemoveConditions = "(ExtraAttackSpellCheck() and not HasAnyExtraAttack(context.Source)) or (not ExtraAttackSpellCheck() and (not IsCantrip() and HasPassive('ExtraAttack_Bladesinging',context.Source)) and HasUseCosts('ActionPoint',false,context.Target)) and not HasStatus('EXTRA_ATTACK_TRACKER') and not HasStatus('EXTRA_ATTACK_2_TRACKER')"
	end
end

--------------------------------- Action Surge Changes ----------------------------------

function EXP_ActionSurge()

	local action = Ext.Stats.Get("Shout_ActionSurge")
	action.Cooldown = "OncePerTurn"
	action.UseCosts = "ActionSurgeCharge:1"
	action.RequirementConditions = "HasActionSurgeResource(context.Source)"
end

local function EXP_StatsLoaded()
    EXP_Barbarian()
    EXP_Bard()
    EXP_Cleric()
    EXP_Druid()
    EXP_Fighter()
    EXP_Monk()
    EXP_Paladin()
    EXP_Ranger()
    EXP_Rogue()
    EXP_Sorcerer()
	EXP_ModifyRAWTwoWeaponFighting()
	EXP_HasteAttack()
	EXP_ActionSurge()
end

Ext.Events.StatsLoaded:Subscribe(EXP_StatsLoaded)