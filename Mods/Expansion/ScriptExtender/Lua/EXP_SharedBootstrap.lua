-- Lib
Ext.Require("EXP_Lib.lua")
--Ext.Require("BootstrapModule.lua")

function MCMGet(settingID)
return Mods.BG3MCM.MCMAPI:GetSettingValue(settingID, ModuleUUID)
end

--------------------------------------- BARBARIAN ---------------------------------------

local EXP_Barbarian_OptionalFeatures

function EXP_Barbarian()
	EXP_ApplyStaticData(EXP_Barbarian_OptionalFeatures)
end

EXP_Barbarian_OptionalFeatures = {
    ["Progression"] = {
        ["0d4a6b4b-8162-414b-81ef-1838e36e778a"] = {
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
        },
        ["2ad3b99d-3dae-4c9e-b8b0-8d2e4e0da805"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "InstinctivePounce",
            },
        },
    },
}

local EXP_Barbarian_Base

function EXP_BaseBarbarian()
	EXP_ApplyStaticData(EXP_Barbarian_Base)
end

EXP_Barbarian_Base = {
    ["Progression"] = {
        ["0d4a6b4b-8162-414b-81ef-1838e36e778a"] = {
            ["SelectSkills"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
            },
        },
        ["38f50ca6-9511-4b32-81e6-bb9a8a941a3d"] = {
            ["SelectSkills"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
            },
        },
        ["2ad3b99d-3dae-4c9e-b8b0-8d2e4e0da805"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
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

local EXP_Bard_Base

function EXP_BaseBard()
    EXP_ApplyStaticData(EXP_Bard_Base)
end

EXP_Bard_Base = {
    ["Progression"] = {
        ["7a2f66b5-7555-49f2-833b-f3d79affc7ca"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "MagicalInspiration",
            },
        },
    },
}

---------------------------------------- CLERIC -----------------------------------------

local EXP_Cleric_OptionalFeatures

function EXP_Cleric()
    EXP_ApplyStaticData(EXP_Cleric_OptionalFeatures)
end

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
        ["051cd419-b843-4996-807e-d0ac78084ef0"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "1",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "2f43a103-5bf1-4534-b14f-663decc0c525"
					},
				},
			},
		},
        ["4cfd9e91-38ef-4b24-8a2a-9b736be91cf8"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "2f43a103-5bf1-4534-b14f-663decc0c525"
					},
				},
			},
		},
        ["e209aba2-bb27-4416-af41-09ce37b7f08f"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "2f43a103-5bf1-4534-b14f-663decc0c525"
					},
				},
			},
		},
        ["4391ca3e-c54a-4116-aafb-4ed4879a7f27"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "2f43a103-5bf1-4534-b14f-663decc0c525"
					},
				},
			},
		},
        ["dc375fe5-6a6c-4ab2-9397-e2dff4b7607b"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "2f43a103-5bf1-4534-b14f-663decc0c525"
					},
				},
			},
		},
        ["1ba0c22a-2655-4f3c-8bf8-f3314587ccaa"] = {
            ["Boosts"] = {
                ["Type"] = "add",
                ["Value"] = "ActionResource(DivinePowerPoint,1,0)",
            },
        },
        ["df19223d-09be-4007-b05d-c94c9ea85420"] = {
            ["Boosts"] = {
                ["Type"] = "add",
                ["Value"] = "ActionResource(DivinePowerPoint,1,0)",
            },
        },
        ["8424b93e-7546-4c9e-ab2d-e26fa7ccf7c5"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "",
                        UUID = "16c4288b-c328-499b-91f5-64d35f6cf815"
                }
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
		},
        ["20ce2664-ba58-4291-be05-dca5b2c4293d"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "",
                        UUID = "17359adf-cfba-4c3b-b8c1-19e22642b128"
                }
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["c993dc9e-df2b-4cc9-857c-49b17982b56e"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "",
                        UUID = "16c4288b-c328-499b-91f5-64d35f6cf815"
                }
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
		},
        ["f5a8a6b4-8514-494d-bbe8-2a0196dc8efa"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "",
                        UUID = "4778a549-4afc-4271-9251-3cf36134b47d"
                }
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["cf1e11e2-5561-49b7-9c6a-83edffcd0f09"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "",
                        UUID = "bb442132-f91d-494d-8ad8-275093fbde0c"
                }
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["f39b339b-e367-403b-b33e-8191eb8363e0"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "",
                        UUID = "e2e43336-ad5b-439a-9efc-1d93e18e532a"
                }
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["bb079588-93de-40de-bf1f-2718b1e08512"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "",
                        UUID = "a76e4a50-e982-49da-abe0-190dcf2f78c4"
                }
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["b49aec61-75ab-4ae2-9d77-02f237391289"] = {
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
		},
        ["9ece65de-501f-4dcf-9681-396a7c8de86a"] = {
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
		},
        ["5a6afeef-0c49-4d50-90ae-adeacb45d8c8"] = {
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
		},
        ["163a9b1f-9e09-47d9-9099-5cd1b64ae46d"] = {
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
		},
    },
}

local EXP_Cleric_Base

function EXP_BaseCleric()
    EXP_ApplyStaticData(EXP_Cleric_Base)
end

EXP_Cleric_Base = {
    ["Progression"] = {
        ["ef18265f-dda6-4eb6-8dd0-b14c57202c33"] = {
            ["Boosts"] = {
                ["Type"] = "remove",
                ["Value"] = "ActionResource(DivinePowerPoint,1,0)",
            },
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "HarnessDivinePower",
            },
        },
        ["051cd419-b843-4996-807e-d0ac78084ef0"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "1",
                        Arg3 = "0",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "2f43a103-5bf1-4534-b14f-663decc0c525"
					},
				},
			},
		},
        ["4cfd9e91-38ef-4b24-8a2a-9b736be91cf8"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["e209aba2-bb27-4416-af41-09ce37b7f08f"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["4391ca3e-c54a-4116-aafb-4ed4879a7f27"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["dc375fe5-6a6c-4ab2-9397-e2dff4b7607b"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["1ba0c22a-2655-4f3c-8bf8-f3314587ccaa"] = {
            ["Boosts"] = {
                ["Type"] = "remove",
                ["Value"] = "ActionResource(DivinePowerPoint,1,0)",
            },
        },
        ["df19223d-09be-4007-b05d-c94c9ea85420"] = {
            ["Boosts"] = {
                ["Type"] = "remove",
                ["Value"] = "ActionResource(DivinePowerPoint,1,0)",
            },
        },
        ["8424b93e-7546-4c9e-ab2d-e26fa7ccf7c5"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "PotentSpellcasting",
            },
		},
        ["20ce2664-ba58-4291-be05-dca5b2c4293d"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_Life_Toggle",
            },
            ["AddSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                    {
                        Ability = "None",
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "bbdd7836-8c4f-4f41-aaf7-acb16e7fc91d",
                    },
                },
            },
		},
        ["c993dc9e-df2b-4cc9-857c-49b17982b56e"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "PotentSpellcasting",
            },
		},
        ["f5a8a6b4-8514-494d-bbe8-2a0196dc8efa"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_Nature_Toggle",
            },
            ["AddSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                    {
                        Ability = "None",
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "eee6250e-b75a-4012-a3da-e6452a53ed8b",
                    },
                },
            },
		},
        ["cf1e11e2-5561-49b7-9c6a-83edffcd0f09"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_Tempest_Toggle",
            },
            ["AddSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                    {
                        Ability = "None",
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "06bb8fc7-f335-4c13-82a1-0fb63ebf5c35",
                    },
                },
            },
		},
        ["f39b339b-e367-403b-b33e-8191eb8363e0"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_Trickery_Toggle",
            },
            ["AddSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                    {
                        Ability = "None",
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "06bb8fc7-f335-4c13-82a1-0fb63ebf5c35",
                    },
                },
            },
		},
        ["bb079588-93de-40de-bf1f-2718b1e08512"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_War_Toggle",
            },
            ["AddSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                    {
                        Ability = "None",
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "4935a640-e3ec-48f7-933b-512b72268e68",
                    },
                },
            },
		},
        ["b49aec61-75ab-4ae2-9d77-02f237391289"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_Life_Toggle_2;Divine_Strike_Life_WeaponAttack",
            },
            ["PassivesRemoved"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_Life_Toggle",
            },
		},
        ["9ece65de-501f-4dcf-9681-396a7c8de86a"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_Tempest_Toggle_2;Divine_Strike_Tempest_WeaponAttack",
            },
            ["PassivesRemoved"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_Tempest_Toggle",
            },
		},
        ["5a6afeef-0c49-4d50-90ae-adeacb45d8c8"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_Trickery_Toggle_2;Divine_Strike_Trickery_WeaponAttack",
            },
            ["PassivesRemoved"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_Trickery_Toggle",
            },
		},
        ["163a9b1f-9e09-47d9-9099-5cd1b64ae46d"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_War_Toggle_2;Divine_Strike_War_WeaponAttack",
            },
            ["PassivesRemoved"] = {
                ["Type"] = "add",
                ["Value"] = "Divine_Strike_War_Toggle",
            },
		},
    },
}

local EXP_DivinePower_Removal

function EXP_DivinePower()
    EXP_ApplyStaticData(EXP_DivinePower_Removal)
end

EXP_DivinePower_Removal = {
    ["Progression"] = {
        ["ef18265f-dda6-4eb6-8dd0-b14c57202c33"] = {
            ["Boosts"] = {
                ["Type"] = "add",
                ["Value"] = "ActionResourceOverride(DivinePowerPoint,0,0)",
            },
		},
    },
}

----------------------------------------- DRUID -----------------------------------------

local EXP_Druid_OptionalFeatures

function EXP_Druid()
    EXP_ApplyStaticData(EXP_Druid_OptionalFeatures)
end

EXP_Druid_OptionalFeatures = {
    ["Progression"] = {
        ["95322dde-349a-4101-964f-9aa46abd890b"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "WildCompanion",
            },
        },
        ["100feb8e-10dd-4892-acf5-7671e7063171"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "1",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "b8faf12f-ca42-45c0-84f8-6951b526182a"
					},
				},
			},
		},
        ["bc7df415-ed9a-416d-8c6e-10a432b1995c"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "b8faf12f-ca42-45c0-84f8-6951b526182a"
					},
				},
			},
		},
        ["e2207fae-9b49-49b5-8764-2c4fb2d5945d"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "b8faf12f-ca42-45c0-84f8-6951b526182a"
					},
				},
			},
		},
        ["0fc3e0b0-c2d2-4514-a1d4-92f43a0b61d8"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "b8faf12f-ca42-45c0-84f8-6951b526182a"
					},
				},
			},
		},
        ["2cc24189-13c9-464b-b1c8-60d742e2b2a0"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "b8faf12f-ca42-45c0-84f8-6951b526182a"
					},
				},
			},
		},
    },
}

local EXP_Druid_Base

function EXP_BaseDruid()
    EXP_ApplyStaticData(EXP_Druid_Base)
end

EXP_Druid_Base = {
    ["Progression"] = {
        ["95322dde-349a-4101-964f-9aa46abd890b"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "WildCompanion",
            },
        },
        ["100feb8e-10dd-4892-acf5-7671e7063171"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "1",
                        Arg3 = "0",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "b8faf12f-ca42-45c0-84f8-6951b526182a"
					},
				},
			},
		},
        ["bc7df415-ed9a-416d-8c6e-10a432b1995c"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["e2207fae-9b49-49b5-8764-2c4fb2d5945d"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["0fc3e0b0-c2d2-4514-a1d4-92f43a0b61d8"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["2cc24189-13c9-464b-b1c8-60d742e2b2a0"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
    },
}

---------------------------------------- FIGHTER ----------------------------------------

local EXP_Fighter_OptionalFeatures

function EXP_Fighter()
    EXP_ApplyStaticData(EXP_Fighter_OptionalFeatures)
end

EXP_Fighter_OptionalFeatures = {
    ["Progression"] = {
        ["05f6a6ef-a574-4317-b9e4-e710975e07b4"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
                },
                },
            },
		},
        ["3265e108-9c70-4714-b13b-4603e40d2f07"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
                },
                },
            },
		},
        ["f6fbe4d4-ec8b-4b88-9851-d9aa398efb7f"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
                },
                },
            },
		},
        ["ddf55c97-9032-4aa1-af76-4ae669a6b53b"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
                },
                },
            },
		},
        ["7c469977-c4fd-4146-86e7-ebbad6df6501"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
                },
                },
            },
		},
        ["fd8c7802-f1b9-4d0c-b2e9-191c3e7dd193"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
                },
                },
            },
		},
    },
}

local EXP_Fighter_Base

function EXP_BaseFighter()
    EXP_ApplyStaticData(EXP_Fighter_Base)
end

EXP_Fighter_Base = {
    ["Progression"] = {
        ["05f6a6ef-a574-4317-b9e4-e710975e07b4"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["3265e108-9c70-4714-b13b-4603e40d2f07"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["f6fbe4d4-ec8b-4b88-9851-d9aa398efb7f"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["ddf55c97-9032-4aa1-af76-4ae669a6b53b"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["7c469977-c4fd-4146-86e7-ebbad6df6501"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["fd8c7802-f1b9-4d0c-b2e9-191c3e7dd193"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
    },
}

----------------------------------------- MONK ------------------------------------------

local EXP_Monk_OptionalFeatures

function EXP_Monk()
    EXP_ApplyStaticData(EXP_Monk_OptionalFeatures)
end

EXP_Monk_OptionalFeatures = {
    ["Progression"] = {
        ["c17915f1-df2b-4cce-876f-68faf153f373"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "DedicatedWeapon",
            },
        },
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

local EXP_Monk_Base

function EXP_BaseMonk()
    EXP_ApplyStaticData(EXP_Monk_Base)
end

EXP_Monk_Base = {
    ["Progression"] = {
        ["c17915f1-df2b-4cce-876f-68faf153f373"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "DedicatedWeapon",
            },
        },
        ["296468cb-3640-4460-9f44-b30ee820a9ed"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "KiFueledAttack",
            },
        },
        ["e2bd97c2-4de1-43eb-bbeb-6383c472a4a2"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "QuickenedHealing",
            },
        },
        ["7b354b75-537f-464e-a28d-cafa72323ab9"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "FocusedAim",
            },
        },
    },
}

---------------------------------------- PALADIN ----------------------------------------

local EXP_Paladin_OptionalFeatures

function EXP_Paladin()
    EXP_ApplyStaticData(EXP_Paladin_OptionalFeatures)
end

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
        ["4f2c7b4e-2f91-4105-a136-9387a8cfed4f"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "f8ebba38-932a-4c64-ae55-3df23e2f60fa"
                },
                },
            },
		},
        ["396096c9-768c-4df8-a0b9-35c06478b752"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "f8ebba38-932a-4c64-ae55-3df23e2f60fa"
                },
                },
            },
		},
        ["0a2410b4-ff13-429f-84ca-73ce2fd9654d"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "f8ebba38-932a-4c64-ae55-3df23e2f60fa"
                },
                },
            },
		},
        ["7a50a223-45d3-4903-9d24-422ecdaf467e"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "f8ebba38-932a-4c64-ae55-3df23e2f60fa"
                },
                },
            },
		},
        ["60287c8d-a7f2-46a8-b0e0-f017497af86c"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "f8ebba38-932a-4c64-ae55-3df23e2f60fa"
                },
                },
            },
		},
    },
}

local EXP_Paladin_Base

function EXP_BasePaladin()
    EXP_ApplyStaticData(EXP_Paladin_Base)
end

EXP_Paladin_Base = {
    ["Progression"] = {
        ["31c12f48-d62f-4e83-b475-10ed9068c9dd"] = {
            ["Boosts"] = {
                ["Type"] = "remove",
                ["Value"] = "ActionResource(DivinePowerPoint,1,0)",
            },
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "HarnessDivinePower",
            },
		},
        ["4b6c4bc2-641e-456a-a7a3-9b343fb5d52a"] = {
            ["Boosts"] = {
                ["Type"] = "remove",
                ["Value"] = "ActionResource(DivinePowerPoint,1,0)",
            },
        },
        ["4f2c7b4e-2f91-4105-a136-9387a8cfed4f"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["396096c9-768c-4df8-a0b9-35c06478b752"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["0a2410b4-ff13-429f-84ca-73ce2fd9654d"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["7a50a223-45d3-4903-9d24-422ecdaf467e"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["60287c8d-a7f2-46a8-b0e0-f017497af86c"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
    },
}

local EXP_DivinePower_Paladin_Removal

function EXP_DivinePower_Paladin()
    EXP_ApplyStaticData(EXP_DivinePower_Paladin_Removal)
end

EXP_DivinePower_Paladin_Removal = {
    ["Progression"] = {
        ["31c12f48-d62f-4e83-b475-10ed9068c9dd"] = {
            ["Boosts"] = {
                ["Type"] = "add",
                ["Value"] = "ActionResourceOverride(DivinePowerPoint,0,0)",
            },
		},
    },
}

---------------------------------------- RANGER -----------------------------------------

local EXP_Ranger_OptionalFeatures

function EXP_Ranger()
    EXP_ApplyStaticData(EXP_Ranger_OptionalFeatures)
end

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
                        Arg3 = "NaturalExplorer",
                        UUID = "f9f5e812-acff-4cbe-b824-265deb89587b"
                },
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "FavoredEnemy",
                        UUID = "d0f13dda-eb37-41f5-aea5-2683f0229e2e"
                }
                },
            },
		},
        ["69c0c0a3-d22a-4f5e-ac64-3a972b58d848"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "a0bdb113-1cce-45ac-94fb-72d4c3f207e9"
                },
                },
            },
		},
        ["12b9a506-33c9-4dcf-81a1-ab8df2023e8e"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "a0bdb113-1cce-45ac-94fb-72d4c3f207e9"
                },
                },
            },
		},
        ["0bf247c5-2217-409e-8f88-eee095448f32"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "a0bdb113-1cce-45ac-94fb-72d4c3f207e9"
                },
                },
            },
		},
        ["77da3350-ccb1-4868-aaf5-5a2f052cf909"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "a0bdb113-1cce-45ac-94fb-72d4c3f207e9"
                },
                },
            },
		},
        ["27a64582-2962-44a3-af5e-9f09883849da"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "0",
                        Amount2 = "1",
                        Arg3 = "MartialVersatility",
                        UUID = "a0bdb113-1cce-45ac-94fb-72d4c3f207e9"
                },
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
                        Arg3 = "NaturalExplorer",
                        UUID = "d7f8771d-a932-4a4a-97aa-a608d0130e2f"
                },
                },
            },
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["92e46062-56ac-4ace-8f94-fac67134fa81"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "FavoredEnemy",
                        UUID = "d0f13dda-eb37-41f5-aea5-2683f0229e2e"
                },
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

local EXP_Ranger_Base

function EXP_BaseRanger()
    EXP_ApplyStaticData(EXP_Ranger_Base)
end

---------------------------------------- RANGER -----------------------------------------

EXP_Ranger_Base = {
    ["Progression"] = {
        ["e6179c57-47e9-4f83-831e-28b73f4b5d0d"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
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
                        Arg3 = "NaturalExplorer",
                        UUID = "72c63024-60af-486e-a180-c7aeee5d77c1"
                },
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "FavoredEnemy",
                        UUID = "d0f13dda-eb37-41f5-aea5-2683f0229e2e"
                }
                },
            },
		},
        ["69c0c0a3-d22a-4f5e-ac64-3a972b58d848"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["12b9a506-33c9-4dcf-81a1-ab8df2023e8e"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["0bf247c5-2217-409e-8f88-eee095448f32"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["77da3350-ccb1-4868-aaf5-5a2f052cf909"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["27a64582-2962-44a3-af5e-9f09883849da"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
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
                        Arg3 = "FavoredEnemy",
                        UUID = "d0f13dda-eb37-41f5-aea5-2683f0229e2e"
                },
                {
                        Amount = "1",
                        Amount2 = "0",
                        Arg3 = "NaturalExplorer",
                        UUID = "72c63024-60af-486e-a180-c7aeee5d77c1"
                },
                },
            },
            ["AddSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                    {
                        Ability = "None",
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "Unknown",
                        SelectorId = " ",
                        SpellUUID = "89384c46-b6e2-4d3c-b61e-e48b932beafb",
                    },
                },
            },
		},
        ["92e46062-56ac-4ace-8f94-fac67134fa81"] = {
            ["SelectPassives"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
    },
    ["PassiveList"] = {
        ["d0f13dda-eb37-41f5-aea5-2683f0229e2e"] = {
            ["Passives"] = {
                ["Type"] = "remove",
                ["Value"] = {
					"FavoredEnemy_FavoredFoe"
                },
            },
		},
        ["72c63024-60af-486e-a180-c7aeee5d77c1"] = {
            ["Passives"] = {
                ["Type"] = "remove",
                ["Value"] = {
					"DeftExplorer_Canny"
				},
			},
		},
	},
}

----------------------------------------- ROGUE -----------------------------------------

local EXP_Rogue_OptionalFeatures

function EXP_Rogue()
    EXP_ApplyStaticData(EXP_Rogue_OptionalFeatures)
end

EXP_Rogue_OptionalFeatures = {
    ["Progression"] = {
        ["6f8d3e70-9b20-4fe0-914f-0f8f19206329"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "SteadyAim",
            },
        },
    },
}

local EXP_Rogue_Base

function EXP_BaseRogue()
    EXP_ApplyStaticData(EXP_Rogue_Base)
end

EXP_Rogue_Base = {
    ["Progression"] = {
        ["6f8d3e70-9b20-4fe0-914f-0f8f19206329"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "SteadyAim",
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

--------------------------------------- SORCERER ----------------------------------------

local EXP_Sorcerer_OptionalFeatures

function EXP_Sorcerer()
    EXP_ApplyStaticData(EXP_Sorcerer_OptionalFeatures)
end

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

local EXP_Sorcerer_Base

function EXP_BaseSorcerer()
    EXP_ApplyStaticData(EXP_Sorcerer_Base)
end

EXP_Sorcerer_Base = {
    ["Progression"] = {
        ["e07bd66e-16af-47ec-aa19-cc16da0d8c3a"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "MagicalGuidance",
            },
        },
    },
}

------------------------------ SORCERER SUBCLASS FEATURES ------------------------------

local EXP_Sorcerer_14thLevelFeatures

function EXP_Sorcerer_14thLevel()
    EXP_ApplyStaticData(EXP_Sorcerer_14thLevelFeatures)
end

EXP_Sorcerer_14thLevelFeatures = {
    ["Progression"] = {
        ["94ba4bb9-7335-497a-8ac0-1ec535fb85d6"] = {
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["308e4516-902d-4d34-9551-0ee7397d03b0"] = {
            ["AddSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                    {
                        Ability = "None",
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "Unknown",
                        SelectorId = " ",
                        SpellUUID = "12150e11-267a-4ecc-a3cc-292c9e2a198d",
                    },
                },
            },
		},
        ["466ce7dc-1eec-44c5-a223-d652c7b1a5f2"] = {
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
        },
        ["b828c6cb-24d6-45a2-ad96-4186dd7fc400"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "ControlledChaos",
            },
        },
        ["18a0cd31-027a-41ab-ae20-0131332a0439"] = {
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
        },
        ["c394198d-9730-4611-86b1-10b742b418f0"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "StormsFury",
            },
        },
    },
}

local EXP_Sorcerer_11thLevelFeatures

function EXP_Sorcerer_11thLevel()
    EXP_ApplyStaticData(EXP_Sorcerer_11thLevelFeatures)
end

EXP_Sorcerer_11thLevelFeatures = {
    ["Progression"] = {
        ["94ba4bb9-7335-497a-8ac0-1ec535fb85d6"] = {
            ["AddSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                    {
                        Ability = "None",
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "Unknown",
                        SelectorId = " ",
                        SpellUUID = "12150e11-267a-4ecc-a3cc-292c9e2a198d",
                    },
                },
            },
		},
        ["308e4516-902d-4d34-9551-0ee7397d03b0"] = {
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
		},
        ["466ce7dc-1eec-44c5-a223-d652c7b1a5f2"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "ControlledChaos",
            },
        },
        ["b828c6cb-24d6-45a2-ad96-4186dd7fc400"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "ControlledChaos",
            },
        },
        ["18a0cd31-027a-41ab-ae20-0131332a0439"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "StormsFury",
            },
        },
        ["c394198d-9730-4611-86b1-10b742b418f0"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "StormsFury",
            },
        },
    },
}

---------------------------------------- WARLOCK ----------------------------------------

local EXP_Warlock_OptionalFeatures

function EXP_Warlock()
    EXP_ApplyStaticData(EXP_Warlock_OptionalFeatures)
end

EXP_Warlock_OptionalFeatures = {
    ["Progression"] = {
        ["646869be-8307-4e1f-93d7-eeedac71e756"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "f5c4af9c-5d8d-4526-9057-94a4b243cd40"
					},
				},
			},
		},
    },
}

---------------------------------------- WIZARD ----------------------------------------

local EXP_Wizard_OptionalFeatures

function EXP_Wizard()
    EXP_ApplyStaticData(EXP_Wizard_OptionalFeatures)
end

EXP_Wizard_OptionalFeatures = {
    ["Progression"] = {
        ["314ad8a4-bf06-4774-bb23-7db0090b51b9"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["ba8743c7-bc11-46ad-8512-be6fee2c8534"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["19ee8c82-fb48-465c-8690-04aa7adc3145"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["27465c53-f521-49e0-871a-2a45b9f557bf"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["7c1c811c-5959-49e2-b743-a45efb7f580f"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["c7f6df40-9d4f-4039-8a29-9bcd5efb3b6a"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["4e4e702e-1ee1-4f31-a0a4-2d898ab6b741"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["8268be8b-fe73-4dc6-82a3-beeab3ebed49"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["6550e503-45ac-4e9a-b453-88e8e845ff6e"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["3cb9d873-5f41-4c3c-88f1-b7574c1bf661"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["41df73d4-2a51-46ea-868b-622db5899859"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["f7ba7e51-6a15-46a1-8774-bfa1379063d2"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["442822fc-eb70-4617-9d9e-3129b3018550"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["5063c5e0-5c45-44a2-af1f-fbe772d01662"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["613ac633-8aab-49ed-9838-a592a298add1"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["98c3a306-df24-457a-824b-60c379e0d103"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["b775cba1-8e52-467b-9b6f-dbedad5b3ed7"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
        ["9fe27693-866f-4fb6-8604-d7bc81f83916"] = {
            ["SelectSpells"] = {
                ["Type"] = "add",
                ["Value"] = {
                {
                        ActionResource = "d136c5d9-0ff0-43da-acce-a74a07f8d6bf",
                        Amount = "0",
                        Arg3 = "1",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "Default",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "",
                        SpellUUID = "3cae2e56-9871-4cef-bba6-96845ea765fa"
					},
				},
			},
		},
    },
}

local EXP_Wizard_Base

function EXP_BaseWizard()
    EXP_ApplyStaticData(EXP_Wizard_Base)
end

EXP_Wizard_Base = {
    ["Progression"] = {
        ["314ad8a4-bf06-4774-bb23-7db0090b51b9"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["ba8743c7-bc11-46ad-8512-be6fee2c8534"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["19ee8c82-fb48-465c-8690-04aa7adc3145"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["27465c53-f521-49e0-871a-2a45b9f557bf"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["7c1c811c-5959-49e2-b743-a45efb7f580f"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["c7f6df40-9d4f-4039-8a29-9bcd5efb3b6a"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["4e4e702e-1ee1-4f31-a0a4-2d898ab6b741"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["8268be8b-fe73-4dc6-82a3-beeab3ebed49"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["6550e503-45ac-4e9a-b453-88e8e845ff6e"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["3cb9d873-5f41-4c3c-88f1-b7574c1bf661"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["41df73d4-2a51-46ea-868b-622db5899859"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["f7ba7e51-6a15-46a1-8774-bfa1379063d2"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["442822fc-eb70-4617-9d9e-3129b3018550"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["5063c5e0-5c45-44a2-af1f-fbe772d01662"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["613ac633-8aab-49ed-9838-a592a298add1"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["98c3a306-df24-457a-824b-60c379e0d103"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["b775cba1-8e52-467b-9b6f-dbedad5b3ed7"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
        ["9fe27693-866f-4fb6-8604-d7bc81f83916"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
				},
			},
		},
    },
}

---------------------------------- WIZARD BLADESINGER ---------------------------------

local EXP_Wizard_Bladesinger

function EXP_WizardBladesinger()
    EXP_ApplyStaticData(EXP_Wizard_Bladesinger)
end

EXP_Wizard_Bladesinger = {
    ["Progression"] = {
        ["fb7ce577-10e0-4ee8-b757-2dd8fb8f6810"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "SongOfVictory",
            },
		},
        ["4d0abe20-4e1a-43ec-855c-8af1194d1e4d"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "SongOfVictory",
            },
		},
    },
}

local EXP_Wizard_BladesingerBase

function EXP_BaseWizardBladesinger()
    EXP_ApplyStaticData(EXP_Wizard_BladesingerBase)
end

EXP_Wizard_BladesingerBase = {
    ["Progression"] = {
        ["fb7ce577-10e0-4ee8-b757-2dd8fb8f6810"] = {
            ["PassivesAdded"] = {
                ["Type"] = "remove",
                ["Value"] = "SongOfVictory",
            },
		},
        ["4d0abe20-4e1a-43ec-855c-8af1194d1e4d"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "SongOfVictory",
            },
		},
    },
}

----------------------------------------- FEATS SECTION -----------------------------------------

local classesProgression = {
  "Barbarian",
  "Bard",
  "Cleric",
  "Druid",
  "Fighter",
  "Monk",
  "Paladin",
  "Ranger",
  "Rogue",
  "Sorcerer",
  "Warlock",
  "Wizard"
}

function EXP_NoFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if progression["Level"] ~= 1 and progression["Level"] ~= 4 and progression["Level"] ~= 8 and progression["Level"] ~= 12 and progression["Level"] ~= 16 and progression["Level"] ~= 19 and progression["ProgressionType"] == 0 and progression["Name"] == class then
				progression["AllowImprovement"] = false
			end

			if ((progression["Level"] == 6 or progression["Level"] == 14) and progression["Name"] == "Fighter") or (progression["Level"] == 10 and progression["Name"] == "Rogue") and progression["ProgressionType"] == 0 then
				progression["AllowImprovement"] = true
			end
		end
	end
end

function EXP_2ndLevelFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if progression["Level"] == 2 and progression["ProgressionType"] == 0 and progression["Name"] == class then
				progression["AllowImprovement"] = true
			end
		end
	end
end

function EXP_2ndAnd3rdLevelFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if (progression["Level"] == 2 or progression["Level"] == 3) and progression["ProgressionType"] == 0 and progression["Name"] == class then
				progression["AllowImprovement"] = true
			end
		end
	end
end

function EXP_EveryLevelFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if progression["Level"] ~= 1 and progression["ProgressionType"] == 0 and progression["Name"] == class then
				progression["AllowImprovement"] = true
			end
		end
	end
end

function EXP_Every2ndLevelFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if progression["Level"] % 2 == 0 and progression["ProgressionType"] == 0 and progression["Name"] == class then
				progression["AllowImprovement"] = true
			end

			if progression["Level"] == 19 and progression["ProgressionType"] == 0 and progression["Name"] == class then
				progression["AllowImprovement"] = false
			end

			if ((progression["Level"] == 5 or progression["Level"] == 13) and progression["Name"] == "Fighter") or (progression["Level"] == 9 and progression["Name"] == "Rogue") and progression["ProgressionType"] == 0 then
				progression["AllowImprovement"] = true
			end
		end
	end
end

function EXP_Every3rdLevelFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if (progression["Level"] == 4 or progression["Level"] == 8 or progression["Level"] == 16 or progression["Level"] == 19) and progression["ProgressionType"] == 0 and progression["Name"] == class then
				progression["AllowImprovement"] = false
			end
			
			if (progression["Level"] == 3 or progression["Level"] == 6 or progression["Level"] == 9 or progression["Level"] == 15 or progression["Level"] == 18)  and progression["ProgressionType"] == 0 and progression["Name"] == class then
				progression["AllowImprovement"] = true
			end

			if progression["Level"] == 5 and progression["Name"] == "Fighter" and progression["ProgressionType"] == 0 then
				progression["AllowImprovement"] = true
			end
		end
	end
end

function EXP_CustomNoFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if progression["Level"] ~= 1 and progression["Level"] ~= 4 and progression["Level"] ~= 8 and progression["Level"] ~= 12 and progression["Level"] ~= 16 and progression["Level"] ~= 19 and progression["ProgressionType"] == 0 and progression["Name"] ~= class then
				progression["AllowImprovement"] = false
			end
		end
	end
end

function EXP_Custom2ndLevelFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if progression["Level"] == 2 and progression["ProgressionType"] == 0 and progression["Name"] ~= class then
				progression["AllowImprovement"] = true
			end
		end
	end
end

function EXP_Custom2ndAnd3rdLevelFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if (progression["Level"] == 2 or progression["Level"] == 3) and progression["ProgressionType"] == 0 and progression["Name"] ~= class then
				progression["AllowImprovement"] = true
			end
		end
	end
end

function EXP_CustomEveryLevelFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if progression["Level"] ~= 1 and progression["ProgressionType"] == 0 and progression["Name"] ~= class then
				progression["AllowImprovement"] = true
			end
		end
	end
end

function EXP_CustomEvery2ndLevelFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if progression["Level"] % 2 == 0 and progression["ProgressionType"] == 0 and progression["Name"] ~= class then
				progression["AllowImprovement"] = true
			end
		end
	end
end

function EXP_CustomEvery3rdLevelFeats()
    local progressions = Ext.StaticData.GetAll("Progression")
    for _,uuid in pairs(progressions) do
		for _,class in pairs(classesProgression) do
			local progression = Ext.StaticData.Get(uuid,"Progression")
			if (progression["Level"] == 4 or progression["Level"] == 8 or progression["Level"] == 16 or progression["Level"] == 19) and progression["ProgressionType"] == 0 and progression["Name"] ~= class then
				progression["AllowImprovement"] = false
			end
			
			if (progression["Level"] == 3 or progression["Level"] == 6 or progression["Level"] == 9 or progression["Level"] == 15 or progression["Level"] == 18)  and progression["ProgressionType"] == 0 and progression["Name"] ~= class then
				progression["AllowImprovement"] = true
			end
		end
	end
end

--------------------------------- Action Surge Changes ----------------------------------

local EXP_Fighter_ActionSurge

function EXP_ActionSurge()

	local action = Ext.Stats.Get("Shout_ActionSurge")
	action.Cooldown = "OncePerTurn"
	action.UseCosts = "ActionSurgeCharge:1"
	action.RequirementConditions = "HasActionSurgeResource(context.Source)"
    EXP_ApplyStaticData(EXP_Fighter_ActionSurge)
end

EXP_Fighter_ActionSurge = {
    ["Progression"] = {
        ["aafbbc41-16e8-4296-a283-a2c5fdd0625b"] = {
            ["Boosts"] = {
                ["Type"] = "add",
                ["Value"] = "ActionResource(ActionSurgeCharge,1,0)",
            },
        },
    },
}

------------------------------- Blessed Strike Changes--------------------------------

function EXP_BlessedStrikes()

	local dscold = Ext.Stats.Get("Interrupt_DivineStrike_Cold")
	local dscoldcrit = Ext.Stats.Get("Interrupt_DivineStrike_Cold_Critical")
	local dsfire = Ext.Stats.Get("Interrupt_DivineStrike_Fire")
	local dsfirecrit = Ext.Stats.Get("Interrupt_DivineStrike_Fire_Critical")
	local dslightning = Ext.Stats.Get("Interrupt_DivineStrike_Lightning")
	local dslightningcrit = Ext.Stats.Get("Interrupt_DivineStrike_Lightning_Critical")
	local dspoison = Ext.Stats.Get("Interrupt_DivineStrike_Poison")
	local dspoisoncrit = Ext.Stats.Get("Interrupt_DivineStrike_Poison_Critical")
	local dsradiant = Ext.Stats.Get("Interrupt_DivineStrike_Radiant")
	local dsradiantcrit = Ext.Stats.Get("Interrupt_DivineStrike_Radiant_Critical")
	local dsthunder = Ext.Stats.Get("Interrupt_DivineStrike_Thunder")
	local dsthundercrit = Ext.Stats.Get("Interrupt_DivineStrike_Thunder_Critical")
	local dsmelee = Ext.Stats.Get("Interrupt_DivineStrike_MeleeWeapon")
	local dsmeleecrit = Ext.Stats.Get("Interrupt_DivineStrike_MeleeWeapon")
	local dsranged = Ext.Stats.Get("Interrupt_DivineStrike_RangedWeapon")
	local dsrangedcrit = Ext.Stats.Get("Interrupt_DivineStrike_RangedWeapon_Critical")
	dscold.Conditions = dscold.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dscoldcrit.Conditions = dscoldcrit.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dsfire.Conditions = dsfire.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dsfirecrit.Conditions = dsfirecrit.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dslightning.Conditions = dslightning.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dslightningcrit.Conditions = dslightningcrit.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dspoison.Conditions = dspoison.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dspoisoncrit.Conditions = dspoisoncrit.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dsradiant.Conditions = dsradiant.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dsradiantcrit.Conditions = dsradiantcrit.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dsthunder.Conditions = dsthunder.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dsthundercrit.Conditions = dsthundercrit.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dsmelee.Conditions = dsmelee.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dsmeleecrit.Conditions = dsmeleecrit.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dsranged.Conditions = dsranged.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	dsrangedcrit.Conditions = dsrangedcrit.Conditions .. " and not SpellId('Target_BlessedStrikes') and not SpellId('Projectile_BlessedStrikes')"
	local dspoisonexp = Ext.Stats.Get("Divine_Strike_Trickery")		
	dspoisonexp.Boosts = dspoisonexp.Boosts .. ";UnlockSpell(Target_BoomingBlade_DivineStrike_Poison);UnlockSpell(Target_GreenFlameBlade_DivineStrike_Poison)"
end

-------------------------- Martial Arts Bonus Unarmed Strike --------------------------

function EXP_MartialArts()

	local bonusus = Ext.Stats.Get("MartialArts_BonusUnarmedStrike")
	bonusus.Conditions = "IsMeleeAttack() and (IsMonkWeaponAttack() or IsDedicatedMonkWeaponAttack()) and not SpellId('Target_UnarmedStrike_Monk')"
end

-------------------------------- Blindsense and Others --------------------------------

--[[function EXP_Blindsense()
	for _, name in pairs(Ext.Stats.GetStats("StatusData")) do
		local invisstatus = Ext.Stats.Get(name)
		if invisstatus.StatusType == "INVISIBLE" and string.find(invisstatus.Boosts, "Advantage") and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target,context.Source)):Advantage(AttackRoll);" and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target,context.Source)):Advantage(AttackRoll); Skill(Stealth, 10)" and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target,context.Source)):Advantage(AttackRoll); UnlockSpell(Target_MistyStep_Free)" and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target,context.Source)):Advantage(AttackRoll); Advantage(Skill, Stealth)" then
			invisstatus.Boosts = string.gsub(invisstatus.Boosts, "Advantage", "IF(not EXP_CanSeeInvisible(context.Target,context.Source) and not IsElusive(context.Target)):Advantage")
			invisstatus.Boosts = invisstatus.Boosts .. ";IF(not EXP_CanSeeInvisible() and not IsElusive()):Disadvantage(AttackTarget)"
		end
	end
end--]]

---------------------------------------- Elusive ----------------------------------------

function EXP_Elusive()
	for _, name in pairs(Ext.Stats.GetStats("StatusData")) do
		local status = Ext.Stats.Get(name)
		if string.find(status.Boosts, ";Advantage%(AttackRoll%)") then
			status.Boosts = string.gsub(status.Boosts, ";Advantage%(AttackRoll%)", ";IF(not EXP_CanSeeInvisible(context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll)")
		end

		if string.find(status.Boosts, "Advantage%(AttackRoll%)") and not string.find(status.Boosts, ":Advantage%(AttackRoll%)") and not string.find(status.Boosts, ";Advantage%(AttackRoll%)") then
			status.Boosts = string.gsub(status.Boosts, "Advantage%(AttackRoll%)", "IF(not EXP_CanSeeInvisible(context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll)")
		end

		if string.find(status.Boosts, "SourceAdvantageOnAttack%(%)") then
			status.Boosts = string.gsub(status.Boosts, "SourceAdvantageOnAttack%(%)", "IF(not EXP_CanSeeInvisible(context.Target) and not IsElusive(context.Target)):SourceAdvantageOnAttack()")
		end
	end
end

---------------------------------------- Paladin Auras ----------------------------------------

local EXP_Paladin_AuraProgressions

function EXP_Paladin_Auras()
    EXP_ApplyStaticData(EXP_Paladin_AuraProgressions)
end

EXP_Paladin_AuraProgressions = {
    ["Progression"] = {
        ["a3fcceed-a1e9-4300-8032-83c573640b19"] = {
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfProtection",
            },
        },
        ["270310b6-e20c-4072-97ba-a1133ecaf6d5"] = {
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfCourage",
            },
        },
        ["969108d9-e59c-44ee-8014-b4c1411eb258"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfProtection_2;AuraOfCourage_2",
            },
            ["PassivesRemoved"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfProtection;AuraOfCourage",
            },
        },
        ["2a57202d-4f50-47de-bdca-f5aa7addf1ff"] = {
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfWarding",
            },
        },
        ["f774b4df-8a46-4b4d-88e4-a0451e07e780"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfWarding_2",
            },
            ["PassivesRemoved"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfWarding",
            },
        },
        ["d70e545b-851e-4e3f-9a61-165123c5fee0"] = {
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfDevotion",
            },
        },
        ["04fd304f-8fad-4c78-b778-20e3df99f344"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfDevotion_2",
            },
            ["PassivesRemoved"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfDevotion",
            },
        },
        ["8d29d7d1-f27f-40d1-b0ef-ed4e71b9551a"] = {
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                },
            },
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfHate",
            },
        },
        ["e2498b69-3dd8-4bad-851c-8ec71b51e8a2"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfHate_2",
            },
            ["PassivesRemoved"] = {
                ["Type"] = "add",
                ["Value"] = "AuraOfHate",
            },
        },
    },
}

---------------------------------------- Beast Master ----------------------------------------

local EXP_BeastMaster_Progressions

function EXP_BeastMaster()
    EXP_ApplyStaticData(EXP_BeastMaster_Progressions)
	local bear = Ext.Stats.Get("Companion_Bear")
	bear.ProficiencyBonusScaling = "265d62c4-9b82-4ed6-9a86-da675b4ef8fe"
	bear.Passives = bear.Passives .. ";CompanionsBond_Creature"
	local boar = Ext.Stats.Get("Companion_Boar")
	boar.ProficiencyBonusScaling = "265d62c4-9b82-4ed6-9a86-da675b4ef8fe"
	boar.Passives = boar.Passives .. ";CompanionsBond_Creature"
	local spider = Ext.Stats.Get("Companion_GiantSpider")
	spider.ProficiencyBonusScaling = "265d62c4-9b82-4ed6-9a86-da675b4ef8fe"
	spider.Passives = spider.Passives .. ";CompanionsBond_Creature"
	local raven = Ext.Stats.Get("Companion_Raven")
	raven.ProficiencyBonusScaling = "265d62c4-9b82-4ed6-9a86-da675b4ef8fe"
	raven.Passives = raven.Passives .. ";CompanionsBond_Creature"
	local wolf = Ext.Stats.Get("Companion_Wolf")
	wolf.ProficiencyBonusScaling = "265d62c4-9b82-4ed6-9a86-da675b4ef8fe"
	wolf.Passives = wolf.Passives .. ";CompanionsBond_Creature"
	local rc = Ext.Stats.Get("Target_RangersCompanion")
	rc.ContainerSpells = rc.ContainerSpells .. ";Target_RangersCompanion_Panther"
end

EXP_BeastMaster_Progressions = {
    ["Progression"] = {
        ["8272e6af-c9e4-433a-ac1c-9fab6e1db55c"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "CompanionsBond",
            },
        },
        ["df52c6f2-ae53-42e0-b4ab-1ec5b941afc1"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "CompanionsBond_4",
            },
        },
        ["7d97a63d-248e-481a-ac37-32f1f61af888"] = {
            ["PassivesAdded"] = {
                ["Type"] = "overwrite",
                ["Value"] = "CompanionsBond_5",
            },
        },
        ["6e314b81-1f3d-4a6b-867a-5d47eabd7653"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "CompanionsBond_7",
            },
        },
        ["7eb63ebb-0a7d-4836-a9da-54fade479ff8"] = {
            ["PassivesAdded"] = {
                ["Type"] = "add",
                ["Value"] = "CompanionsBond_11",
            },
        },
    },
}

---------------------------------------- MYSTIC ARCANUM ----------------------------------------

local EXP_MysticArcanum_Progressions

function EXP_MysticArcanum()
	if Ext.Mod.IsModLoaded("fb5f528d-4d48-4bf2-a668-2274d3cfba96") then
		EXP_ApplyStaticData(EXP_MysticArcanum_Progressions)
	else
		return
	end
end

EXP_MysticArcanum_Progressions = {
    ["Progression"] = {
        ["f88ccd38-e789-4177-bf08-24e652ea0f99"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                {
                        ActionResource = "00000000-0000-0000-0000-000000000000",
                        Amount = "1",
                        Arg3 = "0",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "UntilRest",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "MysticArcanum_7th",
                        SpellUUID = "388cd3b0-914a-44b6-a828-1315323b9fd7"
					},
				},
			},
		},
        ["9d27c48e-930f-42ce-a4a7-188005d51304"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                {
                        ActionResource = "00000000-0000-0000-0000-000000000000",
                        Amount = "1",
                        Arg3 = "0",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "UntilRest",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "MysticArcanum_8th",
                        SpellUUID = "070495e1-ccf4-4c05-9add-61c5010b8204"
					},
				},
			},
		},
        ["04a1d09a-5264-42d1-8554-f2831b7f135a"] = {
            ["SelectSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
                {
                        ActionResource = "00000000-0000-0000-0000-000000000000",
                        Amount = "1",
                        Arg3 = "0",
                        CastingAbility = "None",
                        ClassUUID = "00000000-0000-0000-0000-000000000000",
                        CooldownType = "UntilRest",
                        PrepareType = "AlwaysPrepared",
                        SelectorId = "MysticArcanum_9th",
                        SpellUUID = "47766c27-e791-4e6e-9b3d-2bb379106e62"
					},
				},
			},
		},
    },
}

---------------------------------------- SPREADING SPORES ----------------------------------------

function EXP_SpreadingSpores()
	local sspores = Ext.Stats.Get("Target_SpreadingSpores")
	sspores:SetRawAttribute("SpellProperties","GROUND:IF(not ClassLevelHigherOrEqualThan(14,'Druid')):Summon(c2900350-e3bc-47ca-b522-9ca9bb3661eb,10,Projectile_AiHelper_Summon_Weak,,SpreadingSporesStack,SPREADING_SPORES);GROUND:IF(ClassLevelHigherOrEqualThan(14,'Druid')):Summon(c2900350-e3bc-47ca-b522-9ca9bb3661eb,10,Projectile_AiHelper_Summon_Weak,,SpreadingSporesStack,SPREADING_SPORES_2)")
	sspores.DescriptionParams = "DealDamage(LevelMapValue(SpreadingSpores),Necrotic)"
	sspores.TooltipDamageList = "DealDamage(LevelMapValue(SpreadingSpores),Necrotic)"
end

function EXP_RAWChanges()
	if Ext.Mod.IsModLoaded("f19c68ed-70be-4c3d-b610-e94afc5c5103") then
		local mw7 = Ext.Stats.Get("Target_MagicWeapon_7")
		local mw8 = Ext.Stats.Get("Target_MagicWeapon_8")
		local mw9 = Ext.Stats.Get("Target_MagicWeapon_9")
		mw7.TooltipStatusApply = "ApplyStatus(MAGIC_WEAPON_6,100,600)"
		mw8.TooltipStatusApply = "ApplyStatus(MAGIC_WEAPON_6,100,600)"
		mw9.TooltipStatusApply = "ApplyStatus(MAGIC_WEAPON_6,100,600)"
		mw7.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:7"
		mw8.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:8"
		mw9.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:9"
		local fc7 = Ext.Stats.Get("Target_FogCloud_7")
		local fc8 = Ext.Stats.Get("Target_FogCloud_8")
		local fc9 = Ext.Stats.Get("Target_FogCloud_9")
		fc7.AreaRadius = 42
		fc8.AreaRadius = 48
		fc9.AreaRadius = 54
		local ela7 = Ext.Stats.Get("Target_ElementalWeapon_Acid_7")
		local ela8 = Ext.Stats.Get("Target_ElementalWeapon_Acid_8")
		local ela9 = Ext.Stats.Get("Target_ElementalWeapon_Acid_9")
		ela7.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_ACID_7, 100, 600)"
		ela8.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_ACID_7, 100, 600)"
		ela9.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_ACID_7, 100, 600)"
		ela7.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:7"
		ela8.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:8"
		ela9.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:9"
		local elc7 = Ext.Stats.Get("Target_ElementalWeapon_Cold_7")
		local elc8 = Ext.Stats.Get("Target_ElementalWeapon_Cold_8")
		local elc9 = Ext.Stats.Get("Target_ElementalWeapon_Cold_9")
		elc7.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_COLD_7, 100, 600)"
		elc8.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_COLD_7, 100, 600)"
		elc9.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_COLD_7, 100, 600)"
		elc7.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:7"
		elc8.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:8"
		elc9.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:9"
		local elf7 = Ext.Stats.Get("Target_ElementalWeapon_Fire_7")
		local elf8 = Ext.Stats.Get("Target_ElementalWeapon_Fire_8")
		local elf9 = Ext.Stats.Get("Target_ElementalWeapon_Fire_9")
		elf7.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_FIRE_7, 100, 600)"
		elf8.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_FIRE_7, 100, 600)"
		elf9.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_FIRE_7, 100, 600)"
		elf7.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:7"
		elf8.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:8"
		elf9.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:9"
		local ell7 = Ext.Stats.Get("Target_ElementalWeapon_Lightning_7")
		local ell8 = Ext.Stats.Get("Target_ElementalWeapon_Lightning_8")
		local ell9 = Ext.Stats.Get("Target_ElementalWeapon_Lightning_9")
		ell7.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_LIGHTNING_7, 100, 600)"
		ell8.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_LIGHTNING_7, 100, 600)"
		ell9.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_LIGHTNING_7, 100, 600)"
		ell7.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:7"
		ell8.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:8"
		ell9.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:9"
		local elt7 = Ext.Stats.Get("Target_ElementalWeapon_Thunder_7")
		local elt8 = Ext.Stats.Get("Target_ElementalWeapon_Thunder_8")
		local elt9 = Ext.Stats.Get("Target_ElementalWeapon_Thunder_9")
		elt7.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_THUNDER_7, 100, 600)"
		elt8.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_THUNDER_7, 100, 600)"
		elt9.TooltipStatusApply = "ApplyStatus(ELEMENTAL_WEAPON_THUNDER_7, 100, 600)"
		elt7.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:7"
		elt8.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:8"
		elt9.UseCosts = "BonusActionPoint:1;SpellSlotsGroup:1:1:9"
		local sgn7 = Ext.Stats.Get("Shout_SpiritGuardians_Necrotic_7")
		local sgn8 = Ext.Stats.Get("Shout_SpiritGuardians_Necrotic_8")
		local sgn9 = Ext.Stats.Get("Shout_SpiritGuardians_Necrotic_9")
		sgn7.TooltipStatusApply = "ApplyStatus(SPIRIT_GUARDIANS_NECROTIC_AURA_7,100,100)"
		sgn8.TooltipStatusApply = "ApplyStatus(SPIRIT_GUARDIANS_NECROTIC_AURA_8,100,100)"
		sgn9.TooltipStatusApply = "ApplyStatus(SPIRIT_GUARDIANS_NECROTIC_AURA_9,100,100)"
		local sgr7 = Ext.Stats.Get("Shout_SpiritGuardians_Radiant_7")
		local sgr8 = Ext.Stats.Get("Shout_SpiritGuardians_Radiant_8")
		local sgr9 = Ext.Stats.Get("Shout_SpiritGuardians_Radiant_9")
		sgr7.TooltipStatusApply = "ApplyStatus(SPIRIT_GUARDIANS_RADIANT_AURA_7,100,100)"
		sgr8.TooltipStatusApply = "ApplyStatus(SPIRIT_GUARDIANS_RADIANT_AURA_8,100,100)"
		sgr9.TooltipStatusApply = "ApplyStatus(SPIRIT_GUARDIANS_RADIANT_AURA_9,100,100)"
	else
		return
	end
end

function EXP_5ESpellChanges()
	if Ext.Mod.IsModLoaded("fb5f528d-4d48-4bf2-a668-2274d3cfba96") then
		local dslifepassive = Ext.Stats.Get("Divine_Strike_Life_Toggle_2")		
		dslifepassive.Boosts = dslifepassive.Boosts .. ";UnlockSpell(Target_BoomingBlade_DivineStrike_Life);UnlockSpell(Target_GreenFlameBlade_DivineStrike_Life)"
		local dsnaturepassive = Ext.Stats.Get("Divine_Strike_Nature_Toggle_2")		
		dsnaturepassive.Boosts = dsnaturepassive.Boosts .. ";UnlockSpell(Target_BoomingBlade_DivineStrike_Cold);UnlockSpell(Target_GreenFlameBlade_DivineStrike_Cold);UnlockSpell(Target_BoomingBlade_DivineStrike_Fire);UnlockSpell(Target_GreenFlameBlade_DivineStrike_Fire);UnlockSpell(Target_BoomingBlade_DivineStrike_Lightning);UnlockSpell(Target_GreenFlameBlade_DivineStrike_Lightning)"
		local dsthunderpassive = Ext.Stats.Get("Divine_Strike_Tempest_Toggle_2")
		dsthunderpassive.Boosts = dsthunderpassive.Boosts .. ";UnlockSpell(Target_BoomingBlade_DivineStrike_Thunder);UnlockSpell(Target_GreenFlameBlade_DivineStrike_Thunder)"
		local dspoisonpassive = Ext.Stats.Get("Divine_Strike_Trickery_Toggle_2")
		dspoisonpassive.Boosts = dspoisonpassive.Boosts .. ";UnlockSpell(Target_BoomingBlade_DivineStrike_Poison);UnlockSpell(Target_GreenFlameBlade_DivineStrike_Poison)"
		local dswarpassive = Ext.Stats.Get("Divine_Strike_War_Toggle_2")		
		dswarpassive.Boosts = dswarpassive.Boosts .. ";UnlockSpell(Target_BoomingBlade_DivineStrike_MeleeWeapon);UnlockSpell(Target_GreenFlameBlade_DivineStrike_MeleeWeapon)"
		local intdscold = Ext.Stats.Get("Interrupt_DivineStrike_Cold_EXP")
		local intdscoldcrit = Ext.Stats.Get("Interrupt_DivineStrike_Cold_EXP_Critical")
		local intdsfire = Ext.Stats.Get("Interrupt_DivineStrike_Fire_EXP")
		local intdsfirecrit = Ext.Stats.Get("Interrupt_DivineStrike_Fire_EXP_Critical")
		local intdslightning = Ext.Stats.Get("Interrupt_DivineStrike_Lightning_EXP")
		local intdslightningcrit = Ext.Stats.Get("Interrupt_DivineStrike_Lightning_EXP_Critical")
		local intdspoison = Ext.Stats.Get("Interrupt_DivineStrike_Poison_EXP")
		local intdspoisoncrit = Ext.Stats.Get("Interrupt_DivineStrike_Poison_EXP_Critical")
		local intdsradiant = Ext.Stats.Get("Interrupt_DivineStrike_Radiant_EXP")
		local intdsradiantcrit = Ext.Stats.Get("Interrupt_DivineStrike_Radiant_EXP_Critical")
		local intdsthunder = Ext.Stats.Get("Interrupt_DivineStrike_Thunder_EXP")
		local intdsthundercrit = Ext.Stats.Get("Interrupt_DivineStrike_Thunder_EXP_Critical")
		local intdsmelee = Ext.Stats.Get("Interrupt_DivineStrike_MeleeWeapon_EXP")
		local intdsmeleecrit = Ext.Stats.Get("Interrupt_DivineStrike_MeleeWeapon_EXP_Critical")
		intdscold.Conditions = intdscold.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Cold') and not SpellId('Target_GreenFlameBlade_DivineStrike_Cold')"
		intdscoldcrit.Conditions = intdscoldcrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Cold') and not SpellId('Target_GreenFlameBlade_DivineStrike_Cold')"
		intdsfire.Conditions = intdsfire.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Fire') and not SpellId('Target_GreenFlameBlade_DivineStrike_Fire')"
		intdsfirecrit.Conditions = intdsfirecrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Fire') and not SpellId('Target_GreenFlameBlade_DivineStrike_Fire')"
		intdslightning.Conditions = intdslightning.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Lightning') and not SpellId('Target_GreenFlameBlade_DivineStrike_Lightning')"
		intdslightningcrit.Conditions = intdslightningcrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Lightning') and not SpellId('Target_GreenFlameBlade_DivineStrike_Lightning')"
		intdspoison.Conditions = intdspoison.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Poison') and not SpellId('Target_GreenFlameBlade_DivineStrike_Poison')"
		intdspoisoncrit.Conditions = intdspoisoncrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Poison') and not SpellId('Target_GreenFlameBlade_DivineStrike_Poison')"
		intdsradiant.Conditions = intdsradiant.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Radiant') and not SpellId('Target_GreenFlameBlade_DivineStrike_Radiant')"
		intdsradiantcrit.Conditions = intdsradiantcrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Radiant') and not SpellId('Target_GreenFlameBlade_DivineStrike_Radiant')"
		intdsthunder.Conditions = intdsthunder.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Thunder') and not SpellId('Target_GreenFlameBlade_DivineStrike_Thunder')"
		intdsthundercrit.Conditions = intdsthundercrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Thunder') and not SpellId('Target_GreenFlameBlade_DivineStrike_Thunder')"
		intdsmelee.Conditions = intdsmelee.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Melee') and not SpellId('Target_GreenFlameBlade_DivineStrike_Melee')"
		intdsmeleecrit.Conditions = intdsmeleecrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Melee') and not SpellId('Target_GreenFlameBlade_DivineStrike_Melee')"

		local intdscold2 = Ext.Stats.Get("Interrupt_DivineStrike_Cold_2")
		local intdscoldcrit2 = Ext.Stats.Get("Interrupt_DivineStrike_Cold_2_Critical")
		local intdsfire2 = Ext.Stats.Get("Interrupt_DivineStrike_Fire_2")
		local intdsfirecrit2 = Ext.Stats.Get("Interrupt_DivineStrike_Fire_2_Critical")
		local intdslightning2 = Ext.Stats.Get("Interrupt_DivineStrike_Lightning_2")
		local intdslightningcrit2 = Ext.Stats.Get("Interrupt_DivineStrike_Lightning_2_Critical")
		local intdspoison2 = Ext.Stats.Get("Interrupt_DivineStrike_Poison_2")
		local intdspoisoncrit2 = Ext.Stats.Get("Interrupt_DivineStrike_Poison_2_Critical")
		local intdsradiant2 = Ext.Stats.Get("Interrupt_DivineStrike_Radiant_2")
		local intdsradiantcrit2 = Ext.Stats.Get("Interrupt_DivineStrike_Radiant_2_Critical")
		local intdsthunder2 = Ext.Stats.Get("Interrupt_DivineStrike_Thunder_2")
		local intdsthundercrit2 = Ext.Stats.Get("Interrupt_DivineStrike_Thunder_2_Critical")
		local intdsmelee2 = Ext.Stats.Get("Interrupt_DivineStrike_MeleeWeapon_2")
		local intdsmeleecrit2 = Ext.Stats.Get("Interrupt_DivineStrike_MeleeWeapon_2_Critical")
		intdscold2.Conditions = intdscold.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Cold') and not SpellId('Target_GreenFlameBlade_DivineStrike_Cold')"
		intdscoldcrit2.Conditions = intdscoldcrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Cold') and not SpellId('Target_GreenFlameBlade_DivineStrike_Cold')"
		intdsfire2.Conditions = intdsfire.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Fire') and not SpellId('Target_GreenFlameBlade_DivineStrike_Fire')"
		intdsfirecrit2.Conditions = intdsfirecrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Fire') and not SpellId('Target_GreenFlameBlade_DivineStrike_Fire')"
		intdslightning2.Conditions = intdslightning.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Lightning') and not SpellId('Target_GreenFlameBlade_DivineStrike_Lightning')"
		intdslightningcrit2.Conditions = intdslightningcrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Lightning') and not SpellId('Target_GreenFlameBlade_DivineStrike_Lightning')"
		intdspoison2.Conditions = intdspoison.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Poison') and not SpellId('Target_GreenFlameBlade_DivineStrike_Poison')"
		intdspoisoncrit2.Conditions = intdspoisoncrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Poison') and not SpellId('Target_GreenFlameBlade_DivineStrike_Poison')"
		intdsradiant2.Conditions = intdsradiant.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Radiant') and not SpellId('Target_GreenFlameBlade_DivineStrike_Radiant')"
		intdsradiantcrit2.Conditions = intdsradiantcrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Radiant') and not SpellId('Target_GreenFlameBlade_DivineStrike_Radiant')"
		intdsthunder2.Conditions = intdsthunder.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Thunder') and not SpellId('Target_GreenFlameBlade_DivineStrike_Thunder')"
		intdsthundercrit2.Conditions = intdsthundercrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Thunder') and not SpellId('Target_GreenFlameBlade_DivineStrike_Thunder')"
		intdsmelee2.Conditions = intdsmelee.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Melee') and not SpellId('Target_GreenFlameBlade_DivineStrike_Melee')"
		intdsmeleecrit2.Conditions = intdsmeleecrit.Conditions .. " and not SpellId('Target_BoomingBlade_DivineStrike_Melee') and not SpellId('Target_GreenFlameBlade_DivineStrike_Melee')"
	else
		return
	end
end

---------------------------------------- MISCELLANEOUS ----------------------------------------

function EXP_MiscellaneousChanges()
	local performp = Ext.Stats.Get("PERFORM_POSITIVE")
	local performtp = Ext.Stats.Get("PERFORM_POSITIVE_THEPOWER")
	local performs = Ext.Stats.Get("PERFORM_POSITIVE_STARGAZING")
	local performb = Ext.Stats.Get("PERFORM_POSITIVE_BARDDANCE")
	local performn = Ext.Stats.Get("PERFORM_NEGATIVE")
	local performdos1 = Ext.Stats.Get("PERFORM_POSITIVE_DOS2_1")
	local performdos2 = Ext.Stats.Get("PERFORM_POSITIVE_DOS2_2")
	local performdos3 = Ext.Stats.Get("PERFORM_POSITIVE_DOS2_3")
	local performepi = Ext.Stats.Get("EPI_DIVINE_BARD_PERFORM")
	local performepib = Ext.Stats.Get("EPI_DIVINE_BARD_PERFORM_BALDURANALE")
	local performepibd = Ext.Stats.Get("EPI_DIVINE_BARD_PERFORM_BARDDANCE")
	local performepies = Ext.Stats.Get("EPI_DIVINE_BARD_PERFORM_EPILOGUESONG")
	local performepinl = Ext.Stats.Get("EPI_DIVINE_BARD_PERFORM_NEWLIGHT")
	local performepisf = Ext.Stats.Get("EPI_DIVINE_BARD_PERFORM_STREETSANDFACES")
	local performepiwl = Ext.Stats.Get("EPI_DIVINE_BARD_PERFORM_WELIVE")
	local mightyimpel = Ext.Stats.Get("Throw_MightyImpel")
	local ecacid = Ext.Stats.Get("ELEMENTAL_CLEAVER_ACID")
	local eccold = Ext.Stats.Get("ELEMENTAL_CLEAVER_COLD")
	local ecfire = Ext.Stats.Get("ELEMENTAL_CLEAVER_FIRE")
	local eclightning = Ext.Stats.Get("ELEMENTAL_CLEAVER_LIGHTNING")
	local ecthunder = Ext.Stats.Get("ELEMENTAL_CLEAVER_THUNDER")
	performp.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performp.RemoveConditions
	performtp.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performtp.RemoveConditions
	performn.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performn.RemoveConditions
	performs.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performs.RemoveConditions
	performb.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performb.RemoveConditions
	performdos1.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performdos1.RemoveConditions
	performdos2.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performdos2.RemoveConditions
	performdos3.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performdos3.RemoveConditions
	performepi.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performepi.RemoveConditions
	performepib.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performepib.RemoveConditions
	performepibd.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performepibd.RemoveConditions
	performepies.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performepies.RemoveConditions
	performepinl.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performepinl.RemoveConditions
	performepisf.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performepisf.RemoveConditions
	performepiwl.RemoveConditions = "not StatusId('STEADY_AIM_MOVEMENT') and not StatusId('RAGE_STOP_REMOVE') and " .. performepiwl.RemoveConditions
	ecacid:SetRawAttribute("SpellProperties","IF(not HasPassive('DemiurgicColossus',context.Source)):ApplyEquipmentStatus(MainHand, ELEMENTAL_CLEAVER_ACID,100,10);IF(HasPassive('DemiurgicColossus',context.Source)):ApplyEquipmentStatus(MainHand, ELEMENTAL_CLEAVER_ACID_2,100,10)")
	eccold:SetRawAttribute("SpellProperties","IF(not HasPassive('DemiurgicColossus',context.Source)):ApplyEquipmentStatus(MainHand, ELEMENTAL_CLEAVER_COLD,100,10);IF(HasPassive('DemiurgicColossus',context.Source)):ApplyEquipmentStatus(MainHand, ELEMENTAL_CLEAVER_COLD_2,100,10)")
	ecfire:SetRawAttribute("SpellProperties","IF(not HasPassive('DemiurgicColossus',context.Source)):ApplyEquipmentStatus(MainHand, ELEMENTAL_CLEAVER_FIRE,100,10);IF(HasPassive('DemiurgicColossus',context.Source)):ApplyEquipmentStatus(MainHand, ELEMENTAL_CLEAVER_FIRE_2,100,10)")
	eclightning:SetRawAttribute("SpellProperties","IF(not HasPassive('DemiurgicColossus',context.Source)):ApplyEquipmentStatus(MainHand, ELEMENTAL_CLEAVER_LIGHTNING,100,10);IF(HasPassive('DemiurgicColossus',context.Source)):ApplyEquipmentStatus(MainHand, ELEMENTAL_CLEAVER_LIGHTNING_2,100,10)")
	ecthunder:SetRawAttribute("SpellProperties","IF(not HasPassive('DemiurgicColossus',context.Source)):ApplyEquipmentStatus(MainHand, ELEMENTAL_CLEAVER_THUNDER,100,10);IF(HasPassive('DemiurgicColossus',context.Source)):ApplyEquipmentStatus(MainHand, ELEMENTAL_CLEAVER_THUNDER_2,100,10)")

	if string.find(mightyimpel.ThrowableTargetConditions, "TargetSizeEqualOrSmaller%(Size.Medium%)") then
		mightyimpel.ThrowableTargetConditions = string.gsub(mightyimpel.ThrowableTargetConditions, "TargetSizeEqualOrSmaller%(Size.Medium%)", "((not HasPassive('DemiurgicColossus',context.Source) and TargetSizeEqualOrSmaller(Size.Medium)) or (HasPassive('DemiurgicColossus',context.Source) and TargetSizeEqualOrSmaller(Size.Large)))")
	end
end

---------------------------------------- DRUID BEAST SPELLS WILDSHAPE ----------------------------------------

function EXP_BeastSpellsWildshape()
	for _, name in pairs(Ext.Stats.GetStats("StatusData")) do
		local status = Ext.Stats.Get(name)
		if status.StatusType == "POLYMORPHED" then
			local sgs = status.StatusGroups
			for _, sg in pairs(sgs) do
				if sg == "SG_Polymorph_BeastShape" then
					if string.find(status.Boosts, "BlockSpellCast%(%)") and not string.find(status.Boosts, ":BlockSpellCast%(%)") then
						status.Boosts = string.gsub(status.Boosts, "BlockSpellCast%(%)", "IF(not HasPassive('BeastSpells',context.Source)):BlockSpellCast()")
					end
				end
			end
		end
	end
end

--[[function formatting(file)
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
	local default = '{"Optional Features":{"Barbarian":{"Enabled":true},"Bard":{"Enabled":true},"Cleric":{"Enabled":true},"Druid":{"Enabled":true},"Fighter":{"Enabled":true},"Monk":{"Enabled":true},"Paladin":{"Enabled":true},"Ranger":{"Enabled":true},"Rogue":{"Enabled":true},"Sorcerer":{"Enabled":true},"Wizard":{"Enabled":true}},"XP Rate":{"Level 1":{"EXP": 300.0},"Level 2":{"EXP": 600.0},"Level 3":{"EXP": 1800.0},"Level 4":{"EXP": 3800.0},"Level 5":{"EXP": 6500.0},"Level 6":{"EXP": 8000.0},"Level 7":{"EXP": 9000.0},"Level 8":{"EXP": 12000.0},"Level 9":{"EXP": 14000.0},"Level 10":{"EXP": 20000.0},"Level 11":{"EXP": 24000.0},"Level 12":{"EXP": 30000.0},"Level 13":{"EXP": 20000.0},"Level 14":{"EXP": 25000.0},"Level 15":{"EXP": 30000.0},"Level 16":{"EXP": 30000.0},"Level 17":{"EXP": 40000.0},"Level 18":{"EXP": 40000.0},"Level 19":{"EXP": 50000.0},"Level 20":{"EXP": 50000.0},"Max Level":{"Level": 20}},"Feats":{"2nd Level":{"Enabled":false},"2nd & 3rd Level":{"Enabled":false},"Every Level":{"Enabled":false},"Every 2nd Level":{"Enabled":false},"Every 3rd Level":{"Enabled":false}},"Miscellaneous":{"Sorcerer Subclasses 14th Level Feature":{"Enabled":false},"Wizard Bladesinger":{"Enabled":false}}}'
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

local EXP_Barbarianconfig = Table["Optional Features"]["Barbarian"]
local EXP_Bardconfig = Table["Optional Features"]["Bard"]
local EXP_Clericconfig = Table["Optional Features"]["Cleric"]
local EXP_Druidconfig = Table["Optional Features"]["Druid"]
local EXP_Fighterconfig = Table["Optional Features"]["Fighter"]
local EXP_Monkconfig = Table["Optional Features"]["Monk"]
local EXP_Paladinconfig = Table["Optional Features"]["Paladin"]
local EXP_Rangerconfig = Table["Optional Features"]["Ranger"]
local EXP_Rogueconfig = Table["Optional Features"]["Rogue"]
local EXP_Sorcererconfig = Table["Optional Features"]["Sorcerer"]
local EXP_Wizardconfig = Table["Optional Features"]["Wizard"]
local EXP_Sorcerer14thconfig = Table["Miscellaneous"]["Sorcerer Subclasses 14th Level Feature"]
local EXP_Bladesingerconfig = Table["Miscellaneous"]["Wizard Bladesinger"]
local EXP_2ndLevelFeatconfig = Table["Feats"]["2nd Level"]
local EXP_2nd3rdLevelFeatconfig = Table["Feats"]["2nd & 3rd Level"]
local EXP_EveryLevelFeatconfig = Table["Feats"]["Every Level"]
local EXP_Every2ndLevelFeatconfig = Table["Feats"]["Every 2nd Level"]
local EXP_Every3rdLevelFeatconfig = Table["Feats"]["Every 3rd Level"]
local EXP_Level1 = Table["XP Rate"]["Level 1"]
local EXP_Level2 = Table["XP Rate"]["Level 2"]
local EXP_Level3 = Table["XP Rate"]["Level 3"]
local EXP_Level4 = Table["XP Rate"]["Level 4"]
local EXP_Level5 = Table["XP Rate"]["Level 5"]
local EXP_Level6 = Table["XP Rate"]["Level 6"]
local EXP_Level7 = Table["XP Rate"]["Level 7"]
local EXP_Level8 = Table["XP Rate"]["Level 8"]
local EXP_Level9 = Table["XP Rate"]["Level 9"]
local EXP_Level10 = Table["XP Rate"]["Level 10"]
local EXP_Level11 = Table["XP Rate"]["Level 11"]
local EXP_Level12 = Table["XP Rate"]["Level 12"]
local EXP_Level13 = Table["XP Rate"]["Level 13"]
local EXP_Level14 = Table["XP Rate"]["Level 14"]
local EXP_Level15 = Table["XP Rate"]["Level 15"]
local EXP_Level16 = Table["XP Rate"]["Level 16"]
local EXP_Level17 = Table["XP Rate"]["Level 17"]
local EXP_Level18 = Table["XP Rate"]["Level 18"]
local EXP_Level19 = Table["XP Rate"]["Level 19"]
local EXP_Level20 = Table["XP Rate"]["Level 20"]
local EXP_MaxLevel = Table["XP Rate"]["Max Level"]

--local barbarianenabled = EXP_Barbarianconfig["Enabled"]
local bardenabled = EXP_Bardconfig["Enabled"]
local clericenabled = EXP_Clericconfig["Enabled"]
local druidenabled = EXP_Druidconfig["Enabled"]
local fighterenabled = EXP_Fighterconfig["Enabled"]
local monkenabled = EXP_Monkconfig["Enabled"]
local paladinenabled = EXP_Paladinconfig["Enabled"]
local rangerenabled = EXP_Rangerconfig["Enabled"]
local rogueenabled = EXP_Rogueconfig["Enabled"]
local sorcererenabled = EXP_Sorcererconfig["Enabled"]
local wizardenabled = EXP_Wizardconfig["Enabled"]
local sorcerer14thenabled = EXP_Sorcerer14thconfig["Enabled"]
local bladesingerenabled = EXP_Bladesingerconfig["Enabled"]
local secondlvlfeatenabled = EXP_2ndLevelFeatconfig["Enabled"]
local secondthirdlvlfeatenabled = EXP_2nd3rdLevelFeatconfig["Enabled"]
local everylvlfeatenabled = EXP_EveryLevelFeatconfig["Enabled"]
local everysecondlvlfeatenabled = EXP_Every2ndLevelFeatconfig["Enabled"]
local everythirdlvlfeatenabled = EXP_Every3rdLevelFeatconfig["Enabled"]
local level1EXP = tonumber(EXP_Level1["EXP"])
local level2EXP = tonumber(EXP_Level2["EXP"])
local level3EXP = tonumber(EXP_Level3["EXP"])
local level4EXP = tonumber(EXP_Level4["EXP"])
local level5EXP = tonumber(EXP_Level5["EXP"])
local level6EXP = tonumber(EXP_Level6["EXP"])
local level7EXP = tonumber(EXP_Level7["EXP"])
local level8EXP = tonumber(EXP_Level8["EXP"])
local level9EXP = tonumber(EXP_Level9["EXP"])
local level10EXP = tonumber(EXP_Level10["EXP"])
local level11EXP = tonumber(EXP_Level11["EXP"])
local level12EXP = tonumber(EXP_Level12["EXP"])
local level13EXP = tonumber(EXP_Level13["EXP"])
local level14EXP = tonumber(EXP_Level14["EXP"])
local level15EXP = tonumber(EXP_Level15["EXP"])
local level16EXP = tonumber(EXP_Level16["EXP"])
local level17EXP = tonumber(EXP_Level17["EXP"])
local level18EXP = tonumber(EXP_Level18["EXP"])
local level19EXP = tonumber(EXP_Level19["EXP"])
local level20EXP = tonumber(EXP_Level20["EXP"])
local maxLevel = tonumber(EXP_MaxLevel["Level"])--]]

local function EXP_StatsLoaded()
    Vars = {
        Barbarian = MCMGet("Barbarian"),
        Bard = MCMGet("Bard"),
        Cleric = MCMGet("Cleric"),
        Druid = MCMGet("Druid"),
        Fighter = MCMGet("Fighter"),
        Monk = MCMGet("Monk"),
        Paladin = MCMGet("Paladin"),
        Ranger = MCMGet("Ranger"),
        Rogue = MCMGet("Rogue"),
        Sorcerer = MCMGet("Sorcerer"),
        Warlock = MCMGet("Warlock"),
        Wizard = MCMGet("Wizard"),
        Level1 = MCMGet("Level1"),
        Level2 = MCMGet("Level2"),
        Level3 = MCMGet("Level3"),
        Level4 = MCMGet("Level4"),
        Level5 = MCMGet("Level5"),
        Level6 = MCMGet("Level6"),
        Level7 = MCMGet("Level7"),
        Level8 = MCMGet("Level8"),
        Level9 = MCMGet("Level9"),
        Level10 = MCMGet("Level10"),
        Level11 = MCMGet("Level11"),
        Level12 = MCMGet("Level12"),
        Level13 = MCMGet("Level13"),
        Level14 = MCMGet("Level14"),
        Level15 = MCMGet("Level15"),
        Level16 = MCMGet("Level16"),
        Level17 = MCMGet("Level17"),
        Level18 = MCMGet("Level18"),
        Level19 = MCMGet("Level19"),
        MaxLevel = MCMGet("MaxLevel"),
        MaxXP = MCMGet("MaxXP"),
        BaseClassFeatSelection = MCMGet("BaseClassFeatSelection"),
        CustomClassFeatSelection = MCMGet("CustomClassFeatSelection"),
        BaseClassFeats = MCMGet("BaseClassFeats"),
        CustomClassFeats = MCMGet("CustomClassFeats"),
        Sorcerer11thSubclass = MCMGet("Sorcerer11thSubclass"),
        WizardBladesinger = MCMGet("WizardBladesinger")
    }

	EXP_ActionSurge()
	EXP_BlessedStrikes()
	EXP_MartialArts()
	EXP_Elusive()
	EXP_Paladin_Auras()
	EXP_BeastMaster()
	EXP_RAWChanges()
	EXP_5ESpellChanges()
	EXP_MysticArcanum()
	EXP_SpreadingSpores()
	EXP_MiscellaneousChanges()
	EXP_BeastSpellsWildshape()

	if	Vars["Barbarian"] == true then
		print(string.format("Expansion: Barbarian's Optional Features enabled."))
		EXP_Barbarian()
	elseif	Vars["Barbarian"] ~= true  then
		print(string.format("Expansion: Barbarian's Optional Features disabled."))
	end

	if	Vars["Bard"] == true then
		print(string.format("Expansion: Bard's Optional Features enabled."))
		EXP_Bard()
	elseif	Vars["Bard"] ~= true then
		print(string.format("Expansion: Bard's Optional Features disabled."))
	end

	if	Vars["Cleric"] == true then
		print(string.format("Expansion: Cleric's Optional Features enabled."))
		EXP_Cleric()
	elseif	Vars["Cleric"] ~= true then
		print(string.format("Expansion: Cleric's Optional Features disabled."))
		EXP_DivinePower()
	end

	if	Vars["Druid"] == true then
		print(string.format("Expansion: Druid's Optional Features enabled."))
		EXP_Druid()
	elseif	Vars["Druid"] ~= true then
		print(string.format("Expansion: Druid's Optional Features disabled."))
	end

	if	Vars["Fighter"] == true then
		print(string.format("Expansion: Fighter's Optional Features enabled."))
		EXP_Fighter()
	elseif	Vars["Fighter"] ~= true then
		print(string.format("Expansion: Fighter's Optional Features disabled."))
	end

	if	Vars["Monk"] == true then
		print(string.format("Expansion: Monk's Optional Features enabled."))
		EXP_Monk()
	elseif	Vars["Monk"] ~= true then
		print(string.format("Expansion: Monk's Optional Features disabled."))
	end

	if	Vars["Paladin"] == true then
		print(string.format("Expansion: Paladin's Optional Features enabled."))
		EXP_Paladin()
	elseif	Vars["Paladin"] ~= true then
		print(string.format("Expansion: Paladin's Optional Features disabled."))
		EXP_DivinePower_Paladin()
	end

	if	Vars["Ranger"] == true then
		print(string.format("Expansion: Ranger's Optional Features enabled."))
		EXP_Ranger()
	elseif	Vars["Ranger"] ~= true then
		print(string.format("Expansion: Ranger's Optional Features disabled."))
	end

	if	Vars["Rogue"] == true then
		print(string.format("Expansion: Rogue's Optional Features enabled."))
		EXP_Rogue()
	elseif	Vars["Rogue"] ~= true then
		print(string.format("Expansion: Rogue's Optional Features disabled."))
	end

	if	Vars["Sorcerer"] == true then
		print(string.format("Expansion: Sorcerer's Optional Features enabled."))
		EXP_Sorcerer()
	elseif	Vars["Sorcerer"] ~= true then
		print(string.format("Expansion: Sorcerer's Optional Features disabled."))
	end

	if	Vars["Sorcerer11thSubclass"] == true then
		print(string.format("Expansion: Enabled changing Sorcerer Subclasses' 11th level feature to 14th level."))
		EXP_Sorcerer_14thLevel()
	elseif	Vars["Sorcerer11thSubclass"] ~= true then
		print(string.format("Expansion: Disabled changing Sorcerer Subclasses' 11th level feature to 14th level."))
	end

	if	Vars["Warlock"] == true then
		print(string.format("Expansion: Warlock's Optional Features enabled."))
		EXP_Warlock()
	elseif	Vars["Warlock"] ~= true then
		print(string.format("Expansion: Warlock's Optional Features disabled."))
	end

	if	Vars["Wizard"] == true then
		print(string.format("Expansion: Wizard's Optional Features enabled."))
		EXP_Wizard()
	elseif	Vars["Wizard"] ~= true then
		print(string.format("Expansion: Wizard's Optional Features disabled."))
	end

	if	Vars["WizardBladesinger"] == true then
		print(string.format("Expansion: Switching the Wizard Bladesinger's Song of Victory feature to 12th level."))
		EXP_WizardBladesinger()
	elseif	Vars["WizardBladesinger"] ~= true then
		print(string.format("Expansion: Keeping the Wizard Bladesinger's Song of Victory feature to 14th level."))
	end

	Ext.Stats.GetStatsManager().ExtraData.Level1 = Vars["Level1"]
	print(string.format("Expansion: EXP needed to reach level 2 is: " .. Vars["Level1"]))
	Ext.Stats.GetStatsManager().ExtraData.Level2 = Vars["Level2"]
	print(string.format("Expansion: EXP needed to reach level 3 is: " .. Vars["Level2"]))
	Ext.Stats.GetStatsManager().ExtraData.Level3 = Vars["Level3"]
	print(string.format("Expansion: EXP needed to reach level 4 is: " .. Vars["Level3"]))
	Ext.Stats.GetStatsManager().ExtraData.Level4 = Vars["Level4"]
	print(string.format("Expansion: EXP needed to reach level 5 is: " .. Vars["Level4"]))
	Ext.Stats.GetStatsManager().ExtraData.Level5 = Vars["Level5"]
	print(string.format("Expansion: EXP needed to reach level 6 is: " .. Vars["Level5"]))
	Ext.Stats.GetStatsManager().ExtraData.Level6 = Vars["Level6"]
	print(string.format("Expansion: EXP needed to reach level 7 is: " .. Vars["Level6"]))
	Ext.Stats.GetStatsManager().ExtraData.Level7 = Vars["Level7"]
	print(string.format("Expansion: EXP needed to reach level 8 is: " .. Vars["Level7"]))
	Ext.Stats.GetStatsManager().ExtraData.Level8 = Vars["Level8"]
	print(string.format("Expansion: EXP needed to reach level 9 is: " .. Vars["Level8"]))
	Ext.Stats.GetStatsManager().ExtraData.Level9 = Vars["Level9"]
	print(string.format("Expansion: EXP needed to reach level 10 is: " .. Vars["Level9"]))
	Ext.Stats.GetStatsManager().ExtraData.Level10 = Vars["Level10"]
	print(string.format("Expansion: EXP needed to reach level 11 is: " .. Vars["Level10"]))
	Ext.Stats.GetStatsManager().ExtraData.Level11 = Vars["Level11"]
	print(string.format("Expansion: EXP needed to reach level 12 is: " .. Vars["Level11"]))
	Ext.Stats.GetStatsManager().ExtraData.Level12 = Vars["Level12"]
	print(string.format("Expansion: EXP needed to reach level 13 is: " .. Vars["Level12"]))
	Ext.Stats.GetStatsManager().ExtraData.Level13 = Vars["Level13"]
	print(string.format("Expansion: EXP needed to reach level 14 is: " .. Vars["Level13"]))
	Ext.Stats.GetStatsManager().ExtraData.Level14 = Vars["Level14"]
	print(string.format("Expansion: EXP needed to reach level 15 is: " .. Vars["Level14"]))
	Ext.Stats.GetStatsManager().ExtraData.Level15 = Vars["Level15"]
	print(string.format("Expansion: EXP needed to reach level 16 is: " .. Vars["Level15"]))
	Ext.Stats.GetStatsManager().ExtraData.Level16 = Vars["Level16"]
	print(string.format("Expansion: EXP needed to reach level 17 is: " .. Vars["Level16"]))
	Ext.Stats.GetStatsManager().ExtraData.Level17 = Vars["Level17"]
	print(string.format("Expansion: EXP needed to reach level 18 is: " .. Vars["Level17"]))
	Ext.Stats.GetStatsManager().ExtraData.Level18 = Vars["Level18"]
	print(string.format("Expansion: EXP needed to reach level 19 is: " .. Vars["Level18"]))
	Ext.Stats.GetStatsManager().ExtraData.Level19 = Vars["Level19"]
	print(string.format("Expansion: EXP needed to reach level 20 is: " .. Vars["Level19"]))
	Ext.Stats.GetStatsManager().ExtraData.MaxXPLevel = Vars["MaxLevel"]
	print(string.format("Expansion: Max XP Level is: " .. Vars["MaxLevel"]))
	Ext.Stats.GetStatsManager().ExtraData.MaximumXPCap = Vars["MaxXP"]
	print(string.format("Expansion: Maximum experience cap is: " .. Vars["MaxXP"]))

	if	Vars["BaseClassFeatSelection"] == "true" then
		if	Vars["BaseClassFeats"] == "None" then
			print(string.format("Expansion: Additional feat(s) settings for base game classes are disabled."))
		elseif	Vars["BaseClassFeats"] == "2nd Level" then
			print(string.format("Expansion: Feat granted at 2nd level in base game classes."))
			EXP_2ndLevelFeats()
		elseif	Vars["BaseClassFeats"] == "2nd & 3rd Level" then
			print(string.format("Expansion: Feat granted at 2nd and 3rd level in base game classes."))
			EXP_2ndAnd3rdLevelFeats()
		elseif	Vars["BaseClassFeats"] == "Every Level" then
			print(string.format("Expansion: Feat granted at every level in base game classes."))
			EXP_EveryLevelFeats()
		elseif	Vars["BaseClassFeats"] == "Every 2nd Level" then
			print(string.format("Expansion: Feat granted at every 2nd level in base game classes."))
			EXP_Every2ndLevelFeats()
		elseif	Vars["BaseClassFeats"] == "Every 3rd Level" then
			print(string.format("Expansion: Feat granted at every 3rd level in base game classes."))
			EXP_Every3rdLevelFeats()
		end
	elseif	Vars["BaseClassFeatSelection"] == "false" then
			print(string.format("Expansion: Additional feat(s) settings for base game classes are disabled."))
	end

	if	Vars["CustomClassFeatSelection"] == "true" then
		if	Vars["CustomClassFeats"] == "None" then
			print(string.format("Expansion: Additional feat(s) settings for custom classes are disabled."))
		elseif	Vars["CustomClassFeats"] == "2nd Level" then
			print(string.format("Expansion: Feat granted at 2nd level in custom classes."))
			EXP_Custom2ndLevelFeats()
		elseif	Vars["CustomClassFeats"] == "2nd & 3rd Level" then
			print(string.format("Expansion: Feat granted at 2nd and 3rd level in custom classes."))
			EXP_Custom2ndAnd3rdLevelFeats()
		elseif	Vars["CustomClassFeats"] == "Every Level" then
			print(string.format("Expansion: Feat granted at every level in custom classes."))
			EXP_CustomEveryLevelFeats()
		elseif	Vars["CustomClassFeats"] == "Every 2nd Level" then
			print(string.format("Expansion: Feat granted at every 2nd level in custom classes."))
			EXP_CustomEvery2ndLevelFeats()
		elseif	Vars["CustomClassFeats"] == "Every 3rd Level" then
			print(string.format("Expansion: Feat granted at every 3rd level in custom classes."))
			EXP_CustomEvery3rdLevelFeats()
		end
	elseif	Vars["CustomClassFeatSelection"] == "false" then
			print(string.format("Expansion: Additional feat(s) settings for custom classes are disabled."))
	end
end
Ext.Events.StatsLoaded:Subscribe(EXP_StatsLoaded)

Ext.ModEvents.BG3MCM["MCM_Setting_Saved"]:Subscribe(function(payload)
    if not payload or payload.modUUID ~= ModuleUUID or not payload.settingId then
        return
    end

    if payload.settingId == "Barbarian" then
		if payload.value == true then
			EXP_Barbarian()
			print(string.format("Expansion: Barbarian's Optional Features enabled."))
		elseif payload.value == false then	
			EXP_BaseBarbarian()
			print(string.format("Expansion: Barbarian's Optional Features disabled."))
		end
    end

    if payload.settingId == "Bard" then
		if payload.value == true then
			EXP_Bard()
			print(string.format("Expansion: Bard's Optional Features enabled."))
		elseif payload.value == false then	
			EXP_BaseBard()
			print(string.format("Expansion: Bard's Optional Features disabled."))
		end
    end

    if payload.settingId == "Cleric" then
		if payload.value == true then
			EXP_Cleric()
			print(string.format("Expansion: Cleric's Optional Features enabled."))
		elseif payload.value == false then	
			EXP_BaseCleric()
			print(string.format("Expansion: Cleric's Optional Features disabled."))
		end
    end

    if payload.settingId == "Druid" then
		if payload.value == true then
			EXP_Druid()
			print(string.format("Expansion: Druid's Optional Features enabled."))
		elseif payload.value == false then	
			EXP_BaseDruid()
			print(string.format("Expansion: Druid's Optional Features disabled."))
		end
    end

    if payload.settingId == "Fighter" then
		if payload.value == true then
			EXP_Fighter()
			print(string.format("Expansion: Fighter's Optional Features enabled."))
		elseif payload.value == false then	
			EXP_BaseFighter()
			print(string.format("Expansion: Fighter's Optional Features disabled."))
		end
    end

    if payload.settingId == "Monk" then
		if payload.value == true then
			EXP_Monk()
			print(string.format("Expansion: Monk's Optional Features enabled."))
		elseif payload.value == false then	
			EXP_BaseMonk()
			print(string.format("Expansion: Monk's Optional Features disabled."))
		end
    end

    if payload.settingId == "Paladin" then
		if payload.value == true then
			EXP_Paladin()
			print(string.format("Expansion: Paladin's Optional Features enabled."))
		elseif payload.value == false then	
			EXP_BasePaladin()
			print(string.format("Expansion: Paladin's Optional Features disabled."))
		end
    end

    if payload.settingId == "Ranger" then
		if payload.value == true then
			EXP_Ranger()
			print(string.format("Expansion: Ranger's Optional Features enabled."))
		elseif payload.value == false then	
			EXP_BaseRanger()
			print(string.format("Expansion: Ranger's Optional Features disabled."))
		end
    end

    if payload.settingId == "Rogue" then
		if payload.value == true then
			EXP_Rogue()
			print(string.format("Expansion: Rogue's Optional Features enabled."))
		elseif payload.value == false then	
			EXP_BaseRogue()
			print(string.format("Expansion: Rogue's Optional Features disabled."))
		end
    end

    if payload.settingId == "Sorcerer" then
		if payload.value == true then
			EXP_Sorcerer()
			print(string.format("Expansion: Sorcerer's Optional Features enabled."))
		elseif payload.value == false then	
			EXP_BaseSorcerer()
			print(string.format("Expansion: Sorcerer's Optional Features disabled."))
		end
    end

    if payload.settingId == "Warlock" then
		if payload.value == true then
			EXP_Warlock()
			print(string.format("Expansion: Warlock's Optional Features enabled."))
		elseif payload.value == false then
			print(string.format("Expansion: Warlock's Optional Features disabled."))
		end
    end

    if payload.settingId == "Wizard" then
		if payload.value == true then
			EXP_Wizard()
			print(string.format("Expansion: Wizard's Optional Features enabled."))
		elseif payload.value == false then	
			EXP_BaseWizard()
			print(string.format("Expansion: Wizard's Optional Features disabled."))
		end
    end

    if payload.settingId == "Sorcerer11thSubclass" then
		if payload.value == true then
			EXP_Sorcerer_14thLevel()
			print(string.format("Expansion: Enabled changing Sorcerer Subclasses' 11th level feature to 14th level."))
		elseif payload.value == false then	
			EXP_Sorcerer_11thLevel()
			print(string.format("Expansion: Disabled changing Sorcerer Subclasses' 11th level feature to 14th level."))
		end
    end

    if payload.settingId == "WizardBladesinger" then
		if payload.value == true then
			EXP_WizardBladesinger()
			print(string.format("Expansion: Switching Wizard Bladesinger's Song of Victory feature to 12th level."))
		elseif payload.value == false then	
			EXP_BaseWizardBladesinger()
			print(string.format("Expansion: Keeping the Wizard Bladesinger's Song of Victory feature to 14th level."))
		end
    end

	if payload.settingID == "BaseClassFeatSelection" and payload.value == "true" then
		if payload.settingId == "BaseClassFeats" then
			if payload.value == "None" then
				EXP_NoFeats()
				print(string.format("Expansion: Additional feat(s) settings are disabled for base game classes."))
			elseif payload.value == "2nd Level" then
	--			EXP_NoFeats()
				EXP_2ndLevelFeats()
				print(string.format("Expansion: Feat granted at 2nd level in base game classes."))
			elseif payload.value == "2nd & 3rd Level" then	
	--			EXP_NoFeats()
				EXP_2ndAnd3rdLevelFeats()
				print(string.format("Expansion: Feat granted at 2nd and 3rd level in base game classes."))
			elseif payload.value == "Every Level" then
	--			EXP_NoFeats()
				EXP_EveryLevelFeats()
				print(string.format("Expansion: Feat granted at every level except 1st in base game classes."))
			elseif payload.value == "Every 2nd Level" then
	--			EXP_NoFeats()
				EXP_Every2ndLevelFeats()
				print(string.format("Expansion: Feat granted at every 2nd level in base game classes."))
			elseif payload.value == "Every 3rd Level" then
	--			EXP_NoFeats()
				EXP_Every3rdLevelFeats()
				print(string.format("Expansion: Feat granted at every 3rd level in base game classes."))
			end
		end
	end

	if payload.settingID == "CustomClassFeatSelection" and payload.value == "true" then
		if payload.settingId == "CustomClassFeats" then
			if payload.value == "None" then
				EXP_CustomNoFeats()
				print(string.format("Expansion: Additional feat(s) settings are disabled for custom classes."))
			elseif payload.value == "2nd Level" then
				EXP_Custom2ndLevelFeats()
				print(string.format("Expansion: Feat granted at 2nd level in custom classes."))
			elseif payload.value == "2nd & 3rd Level" then	
				EXP_Custom2ndAnd3rdLevelFeats()
				print(string.format("Expansion: Feat granted at 2nd and 3rd level in custom classes."))
			elseif payload.value == "Every Level" then
				EXP_CustomEveryLevelFeats()
				print(string.format("Expansion: Feat granted at every level except 1st in custom classes."))
			elseif payload.value == "Every 2nd Level" then
				EXP_CustomEvery2ndLevelFeats()
				print(string.format("Expansion: Feat granted at every 2nd level in custom classes."))
			elseif payload.value == "Every 3rd Level" then
				EXP_CustomEvery3rdLevelFeats()
				print(string.format("Expansion: Feat granted at every 3rd level in custom classes."))
			end
		end
	end
end)

Ext.ModEvents.BG3MCM["MCM_Setting_Reset"]:Subscribe(function(payload)
    if not payload or payload.modUUID ~= ModuleUUID or not payload.settingId then
        return
    end

    if payload.settingId == "Barbarian" then
		EXP_Barbarian()
		print(string.format("Expansion: Barbarian's Optional Features enabled."))
    end

    if payload.settingId == "Bard" then
		EXP_Bard()
		print(string.format("Expansion: Bard's Optional Features enabled."))
    end

    if payload.settingId == "Cleric" then
		EXP_Cleric()
		print(string.format("Expansion: Cleric's Optional Features enabled."))
    end

    if payload.settingId == "Druid" then
		EXP_Druid()
		print(string.format("Expansion: Druid's Optional Features enabled."))
    end

    if payload.settingId == "Fighter" then
		EXP_Fighter()
		print(string.format("Expansion: Fighter's Optional Features enabled."))
    end

    if payload.settingId == "Monk" then
		EXP_Monk()
		print(string.format("Expansion: Monk's Optional Features enabled."))
    end

    if payload.settingId == "Paladin" then
		EXP_Paladin()
		print(string.format("Expansion: Paladin's Optional Features enabled."))
    end

    if payload.settingId == "Ranger" then
		EXP_Ranger()
		print(string.format("Expansion: Ranger's Optional Features enabled."))
    end

    if payload.settingId == "Rogue" then
		EXP_Rogue()
		print(string.format("Expansion: Rogue's Optional Features enabled."))
    end

    if payload.settingId == "Sorcerer" then
		EXP_Sorcerer()
		print(string.format("Expansion: Sorcerer's Optional Features enabled."))
    end

    if payload.settingId == "Warlock" then
		EXP_Warlock()
		print(string.format("Expansion: Warlock's Optional Features enabled."))
    end

    if payload.settingId == "Wizard" then
		EXP_Wizard()
		print(string.format("Expansion: Wizard's Optional Features enabled."))
    end

    if payload.settingId == "Sorcerer11thSubclass" then
		EXP_Sorcerer_11thLevel()
		print(string.format("Expansion: Disabled changing Sorcerer Subclasses 11th level features to 14th level."))
    end

    if payload.settingId == "WizardBladesinger" then
		EXP_BaseWizardBladesinger()
		print(string.format("Expansion: Keeping the Wizard Bladesinger's Song of Victory feature to 14th level."))
    end

    if payload.settingId == "BaseClassFeats" then
		EXP_NoFeats()
		print(string.format("Expansion: Additional feat(s) settings are disabled in base game classes."))
    end

    if payload.settingId == "CustomClassFeats" then
		EXP_CustomNoFeats()
		print(string.format("Expansion: Additional feat(s) settings are disabled in custom classes."))
    end
end)
	