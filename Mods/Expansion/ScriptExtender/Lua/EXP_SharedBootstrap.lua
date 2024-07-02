-- Lib
Ext.Require("EXP_Lib.lua")
Ext.Require("BootstrapModule.lua")

local EXP_Barbarian_OptionalFeatures

---------------------------------------- STATS FUNCTION ----------------------------------------

function EXP_Barbarian()
    EXP_ApplyStaticData(EXP_Barbarian_OptionalFeatures)
end

--------------------------------------- BARBARIAN ---------------------------------------

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

local EXP_Fighter_OptionalFeatures

function EXP_Fighter()
    EXP_ApplyStaticData(EXP_Fighter_OptionalFeatures)
end

---------------------------------------- FIGHTER ----------------------------------------

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

local EXP_Monk_OptionalFeatures

function EXP_Monk()
    EXP_ApplyStaticData(EXP_Monk_OptionalFeatures)
end

----------------------------------------- MONK ------------------------------------------

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

local EXP_Sorcerer_14thLevelFeatures

function EXP_Sorcerer_14thLevel()
    EXP_ApplyStaticData(EXP_Sorcerer_14thLevelFeatures)
end

------------------------------ SORCERER SUBCLASS FEATURES ------------------------------

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

local EXP_Wizard_OptionalFeatures

function EXP_Wizard()
    EXP_ApplyStaticData(EXP_Wizard_OptionalFeatures)
end

---------------------------------------- WIZARD ----------------------------------------

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

local EXP_Wizard_Bladesinger

function EXP_WizardBladesinger()
    EXP_ApplyStaticData(EXP_Wizard_Bladesinger)
end

---------------------------------- WIZARD BLADESINGER ---------------------------------

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
                ["Type"] = "overwrite",
                ["Value"] = "",
            },
		},
    },
}


----------------------------------------- FEATS SECTION -----------------------------------------

local EXP_2ndLevelFeats_Progressions

function EXP_2ndLevelFeats()
    EXP_ApplyStaticData(EXP_2ndLevelFeats_Progressions)
end

EXP_2ndLevelFeats_Progressions = {
    ["Progression"] = {
        ["89986e8a-09b1-4163-b1d0-ddb2332bf3c5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7a2f66b5-7555-49f2-833b-f3d79affc7ca"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["ef18265f-dda6-4eb6-8dd0-b14c57202c33"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["95322dde-349a-4101-964f-9aa46abd890b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["aafbbc41-16e8-4296-a283-a2c5fdd0625b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["d6c11773-888b-47a3-9dfa-e247bcbd461a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["b9c3b0e1-38e6-4383-90d5-cb7e65348474"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["35863719-e935-4757-a9f3-eb38a8cd8cb7"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["706a869d-7894-453d-b6ac-9428f617649c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4de835bb-b7d0-47d8-aaea-596b4204a32a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["d6184c47-5b99-4e63-95ac-02f8ce4ccda1"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c17915f1-df2b-4cce-876f-68faf153f373"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
    },
}

local EXP_2ndAnd3rdLevelFeats_Progressions

function EXP_2ndAnd3rdLevelFeats()
    EXP_ApplyStaticData(EXP_2ndAnd3rdLevelFeats_Progressions)
end

EXP_2ndAnd3rdLevelFeats_Progressions = {
    ["Progression"] = {
-- Barbarian
        ["89986e8a-09b1-4163-b1d0-ddb2332bf3c5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0d4a6b4b-8162-414b-81ef-1838e36e778a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Bard
        ["7a2f66b5-7555-49f2-833b-f3d79affc7ca"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["26f64038-6033-48d5-9da7-38e8c95ce712"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Cleric
        ["ef18265f-dda6-4eb6-8dd0-b14c57202c33"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4d9072bb-7b14-43b9-afb2-0d7e89f90c65"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Druid
        ["95322dde-349a-4101-964f-9aa46abd890b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["ce4b9b17-8afb-4fa4-8f01-742da3c3cf26"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Fighter
        ["aafbbc41-16e8-4296-a283-a2c5fdd0625b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["23eacff0-9efe-4ea6-b031-19075cc96b63"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Paladin
        ["d6c11773-888b-47a3-9dfa-e247bcbd461a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["31c12f48-d62f-4e83-b475-10ed9068c9dd"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Ranger
        ["b9c3b0e1-38e6-4383-90d5-cb7e65348474"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["e6179c57-47e9-4f83-831e-28b73f4b5d0d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Rogue
        ["35863719-e935-4757-a9f3-eb38a8cd8cb7"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["6f8d3e70-9b20-4fe0-914f-0f8f19206329"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Sorcerer
        ["706a869d-7894-453d-b6ac-9428f617649c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["e60b351e-aa26-4c5e-bbdc-ce5c8af03b5a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Warlock
        ["4de835bb-b7d0-47d8-aaea-596b4204a32a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["da1ea937-f361-4dc6-abb1-1e7153e2a6de"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Wizard
        ["d6184c47-5b99-4e63-95ac-02f8ce4ccda1"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["314ad8a4-bf06-4774-bb23-7db0090b51b9"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Monk
        ["c17915f1-df2b-4cce-876f-68faf153f373"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["296468cb-3640-4460-9f44-b30ee820a9ed"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
    },
}

local EXP_EveryLevel_Progressions

function EXP_EveryLevelFeats()
    EXP_ApplyStaticData(EXP_EveryLevel_Progressions)
end

EXP_EveryLevel_Progressions = {
    ["Progression"] = {
-- Barbarian
        ["89986e8a-09b1-4163-b1d0-ddb2332bf3c5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0d4a6b4b-8162-414b-81ef-1838e36e778a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["76654cf4-89a5-4255-8e2a-cd4d08df0fe4"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2c296206-6a78-4ff4-8b5e-a8ba7c62a62a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2ad3b99d-3dae-4c9e-b8b0-8d2e4e0da805"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2b2be55c-8c01-4bcd-84ff-b4c9ca23faf8"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["38f50ca6-9511-4b32-81e6-bb9a8a941a3d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["37055929-9081-4337-831f-7ac427ef02fd"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["3c134d54-8f6c-47ab-84f4-93e7cd9681af"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["fbb6ad70-390d-4627-b67a-b0863088a0e5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0c6703f5-4ecf-45af-89d5-e27dc6c48dc4"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["88225c7d-e7ba-42e4-a026-962ed579ab49"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["fdff97a8-a514-404a-855c-19b8dc3a61e2"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["97521657-3242-4218-a1e6-865795aa048c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Bard
        ["7a2f66b5-7555-49f2-833b-f3d79affc7ca"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["26f64038-6033-48d5-9da7-38e8c95ce712"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["3ca383a7-d545-4e01-8d00-00c965d3e604"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c3fc8172-ca21-46e1-9447-e856ad063689"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["9aa0f1f1-8074-4fe7-919e-804dc0030406"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["b1f811c8-4831-488a-bd1d-47e9883d2823"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["b898b2bd-7cd3-480c-877c-4ccd391f2b2c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4f9b2f00-fd70-487c-9038-83412eb5abc0"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["e220e80d-37bf-4b4b-b38a-4b4672304793"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["374edd49-5b71-49e2-93cc-72df7fe1d7de"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["453bd5fd-8cec-4ea7-9aef-bfaf07dcc116"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["331e3ce3-6f02-47e4-927e-b9feb92f167f"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["d52893d6-746e-44f8-a7c9-f6d8f4d0e17b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["05e456e8-349b-4dd3-8dac-bd4e8f8ebb2d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Cleric
        ["ef18265f-dda6-4eb6-8dd0-b14c57202c33"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4d9072bb-7b14-43b9-afb2-0d7e89f90c65"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["078b465a-f79d-44cd-bdfa-9a9c51579b33"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["1ba0c22a-2655-4f3c-8bf8-f3314587ccaa"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["fe851490-be41-44f9-a7b9-1744c0948ce0"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4472e936-7c8e-40a1-a818-49117fc03361"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0266b6b2-72d9-4319-84ae-afcdfc67b32b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["92bb47c7-6798-4952-a45d-e4b4693f0f9c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0928254d-64d4-4b71-9655-e59184d6bb2c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c9f7417d-6bf7-423f-94ec-ca8e5fcab0b5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["8ff87c2e-2ff7-40d6-973f-68af4579fe28"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["46f26972-5885-4f66-9006-9f734f3be9b9"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["df19223d-09be-4007-b05d-c94c9ea85420"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["41411331-86fb-4fe3-9a72-d09216ab3eaf"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Druid
        ["95322dde-349a-4101-964f-9aa46abd890b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["ce4b9b17-8afb-4fa4-8f01-742da3c3cf26"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["95868b34-a3c7-4748-92b8-f44f72242bf4"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0485e0eb-e537-4adb-a06e-5cf677388f85"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["37a94de9-9097-4775-8aea-9f13b8d2bf93"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c44e50a3-6790-40ac-ab11-3c1b1b9764ba"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7b1d78e9-fc1c-4871-87e7-80c0369ce2d3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["132c7999-90ea-4ab9-a394-7348e7f9681d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["03ab59dd-8bf6-40a4-8257-6ecbd315f6b9"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["5ed96cad-e8dc-458f-837c-4675889193fb"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c62b2fb0-6680-4361-83c7-6359b3e7d3db"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["a719bf26-4c7d-4265-8dc9-51cf3dd75030"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0e947dc7-40bc-49da-8f49-2a543c03131c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["e2eb25e6-1da2-4c3f-ac08-b58b227f3e7d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Fighter
        ["aafbbc41-16e8-4296-a283-a2c5fdd0625b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["23eacff0-9efe-4ea6-b031-19075cc96b63"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["3b20daaa-91e3-45ec-ad66-69763bc5ab2d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["063562cd-a30d-40f9-a992-5a15c186a483"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["5f69e04b-1d97-481c-995f-a069dfb9f555"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7535f41a-d360-4adc-8166-9d2e29660b1d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["fbf8b5f0-eb19-4da9-b89a-f8c743f684d1"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["30bc922d-9cb5-4761-8d5c-7a2a18867fde"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["ee7d20f2-e3cd-48f3-a254-82a27c90c94d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4008a42a-777c-4f3c-b180-f88e5ab85a93"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["ee6dffc7-962c-4ed6-8426-6b74537573f3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["6f96237b-2d98-4083-a8b6-1719c8100098"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Monk
        ["c17915f1-df2b-4cce-876f-68faf153f373"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["296468cb-3640-4460-9f44-b30ee820a9ed"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7b354b75-537f-464e-a28d-cafa72323ab9"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["9286a35f-e58b-4f56-95a4-78dfb19ed5d5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["e715d543-451b-419f-9cf1-ed88339d9387"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["62d54d84-80f8-4c89-9a1a-6b15aeaf697a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["153f55a7-4c75-4748-a9f7-a756239a3fe6"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["8aa410ea-1fe2-4f9f-ab19-b2ab87f652cb"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["da5308ab-7825-46c6-bbe6-0deaea7bc9cf"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["63d476e5-c399-4b4e-b505-4f92ac5194b3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["eba2927b-243e-4c61-982c-ce766d2e0140"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["76ac8b5f-6c06-4abb-ae7c-5f9add2ef2e0"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["5a0d6438-9870-42b4-a845-40f0bc60ca60"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["51f0e9b1-bf75-4a87-9332-f5d65e4bcc73"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Paladin
        ["d6c11773-888b-47a3-9dfa-e247bcbd461a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["31c12f48-d62f-4e83-b475-10ed9068c9dd"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2f27f50e-4c5b-476b-b034-820301937172"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["a3fcceed-a1e9-4300-8032-83c573640b19"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4b6c4bc2-641e-456a-a7a3-9b343fb5d52a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["fada82ce-7f21-4b4d-9f08-5440848a7c1d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["270310b6-e20c-4072-97ba-a1133ecaf6d5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["cc90f34d-28ba-4254-b7dc-473af8c3d633"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["f22715fe-9d13-413b-9523-72f764b60cbf"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["5b02fb54-ab78-43b7-9873-9c8b66d9f694"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["65c6b594-c4f9-4fc6-9882-47fffc39a0bb"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["fc1f6337-40d6-438a-ba29-e39a2fc72d49"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["969108d9-e59c-44ee-8014-b4c1411eb258"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["bcba6cc1-3b0a-4562-ac80-0259108ecb36"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Ranger
        ["b9c3b0e1-38e6-4383-90d5-cb7e65348474"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["e6179c57-47e9-4f83-831e-28b73f4b5d0d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["3aac34db-f7d6-4176-9ba2-5e77ecdaf140"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["774f7a73-3a29-404c-898b-e8810f41a8ba"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["1e6721bf-8ba9-4495-9ff3-bcb0192369fe"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["13821b69-d8b5-4179-a1fc-fa9dcfcc2561"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["26e69682-2b1b-48c5-ad8d-6e6e31601a8b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["b149567f-8f3b-456e-b50e-946522e8d51c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["325106dd-b76d-4bbd-8735-1926ac4d83ca"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["92e46062-56ac-4ace-8f94-fac67134fa81"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["66872abe-44de-4727-899c-63fded6d5885"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c30e9e73-c885-4d1d-84d7-7efbcdc0a426"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["90011772-ca07-4efa-a536-a0a5a4d964dd"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["8de58ca2-5b78-45f0-9271-f213fda39dd6"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Rogue
        ["35863719-e935-4757-a9f3-eb38a8cd8cb7"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["6f8d3e70-9b20-4fe0-914f-0f8f19206329"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["19857e46-f5dc-4a9f-847e-5f714ceef7b1"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7e1ce634-c599-427a-b992-d4208ce99e6d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["ca43e06b-c2cb-46ab-a9cf-39852a903113"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["a32481e5-e514-4011-9de9-4e3cba389ee0"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["9cf65c52-0df9-4433-9059-f7ae29fb1f18"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4a69ef3b-ea43-4dc1-9057-1a3de7ecb025"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["3481eb52-4b81-4ccc-865d-e43b039afea4"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["30232ef9-9693-48a2-aa3e-8999df0cbe9f"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["3751f306-3845-4ac1-9ee6-017f0e208fd0"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["94635384-a6be-4f90-bbe9-4abd4003b6c3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["9c927b1d-ec7e-4d57-ae8b-537bbfa051ac"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Sorcerer
        ["706a869d-7894-453d-b6ac-9428f617649c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["e60b351e-aa26-4c5e-bbdc-ce5c8af03b5a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["e07bd66e-16af-47ec-aa19-cc16da0d8c3a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["d4e27787-6ff8-47ac-9556-a71992f7e596"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0e10748f-f9bf-4d10-9786-0ecda400cb14"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["aeaf2dab-26b6-4e0a-9a3d-06aac901232e"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["1c091ba4-d911-4c48-99ed-da58463f2ed3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2ef87d92-f1c6-4bb2-ab60-308963eef0da"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["e34cb47b-1b0e-49f2-b0f1-90c92999f03f"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["b68229cb-73af-432e-89d4-1a6b4f06ead8"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["60a22b31-3abf-401c-85d8-25b7940549a2"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["6f179c15-f96b-410f-a2bd-259c541734e7"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["77c92e79-3b58-44f8-98ae-6cb1c39a65ad"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["dc1bb28a-90d2-420f-9164-5cdc48fa3b5d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Warlock
        ["4de835bb-b7d0-47d8-aaea-596b4204a32a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["da1ea937-f361-4dc6-abb1-1e7153e2a6de"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["17dbf049-c6ba-44f0-9183-30847d25ea37"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["9c14356e-404b-4d32-99ce-5d8435be2a8f"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["23955656-459a-40b0-b648-2167e7d223d8"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["bb998812-dab7-4d0e-aa58-d9b1fb8b3688"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["f7ded500-4f08-4fe8-b325-85d5b6bbeb86"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7de6eb31-c911-4751-97ef-382e1a45ea6c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["f88ccd38-e789-4177-bf08-24e652ea0f99"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["67a28bc6-4a9e-4b10-a755-31487f9bc50e"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["9d27c48e-930f-42ce-a4a7-188005d51304"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["04a1d09a-5264-42d1-8554-f2831b7f135a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0a94300c-1717-42f0-b855-3dd49dd02e13"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["bbac3e70-ff9a-4055-8ee9-7ea81a4141ec"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Wizard
        ["d6184c47-5b99-4e63-95ac-02f8ce4ccda1"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["314ad8a4-bf06-4774-bb23-7db0090b51b9"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["19ee8c82-fb48-465c-8690-04aa7adc3145"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["27465c53-f521-49e0-871a-2a45b9f557bf"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7c1c811c-5959-49e2-b743-a45efb7f580f"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4e4e702e-1ee1-4f31-a0a4-2d898ab6b741"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["8268be8b-fe73-4dc6-82a3-beeab3ebed49"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["6550e503-45ac-4e9a-b453-88e8e845ff6e"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["41df73d4-2a51-46ea-868b-622db5899859"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["f7ba7e51-6a15-46a1-8774-bfa1379063d2"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["442822fc-eb70-4617-9d9e-3129b3018550"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["613ac633-8aab-49ed-9838-a592a298add1"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["98c3a306-df24-457a-824b-60c379e0d103"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["9fe27693-866f-4fb6-8604-d7bc81f83916"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
    },
}

local EXP_Every2ndLevel_Progressions

function EXP_Every2ndLevelFeats()
    EXP_ApplyStaticData(EXP_Every2ndLevel_Progressions)
end

EXP_Every2ndLevel_Progressions = {
    ["Progression"] = {
-- Barbarian
        ["89986e8a-09b1-4163-b1d0-ddb2332bf3c5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2c296206-6a78-4ff4-8b5e-a8ba7c62a62a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["38f50ca6-9511-4b32-81e6-bb9a8a941a3d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["3c134d54-8f6c-47ab-84f4-93e7cd9681af"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["88225c7d-e7ba-42e4-a026-962ed579ab49"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["fdff97a8-a514-404a-855c-19b8dc3a61e2"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["f290f4fc-c19d-427b-a526-55cc068e6162"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["97521657-3242-4218-a1e6-865795aa048c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Bard
        ["7a2f66b5-7555-49f2-833b-f3d79affc7ca"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c3fc8172-ca21-46e1-9447-e856ad063689"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["b898b2bd-7cd3-480c-877c-4ccd391f2b2c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["374edd49-5b71-49e2-93cc-72df7fe1d7de"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["d52893d6-746e-44f8-a7c9-f6d8f4d0e17b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2582b513-dec4-472c-aaa1-9febaa2385bf"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["05e456e8-349b-4dd3-8dac-bd4e8f8ebb2d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Cleric
        ["ef18265f-dda6-4eb6-8dd0-b14c57202c33"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["1ba0c22a-2655-4f3c-8bf8-f3314587ccaa"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0266b6b2-72d9-4319-84ae-afcdfc67b32b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c9f7417d-6bf7-423f-94ec-ca8e5fcab0b5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["df19223d-09be-4007-b05d-c94c9ea85420"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["dc375fe5-6a6c-4ab2-9397-e2dff4b7607b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["41411331-86fb-4fe3-9a72-d09216ab3eaf"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Druid
        ["95322dde-349a-4101-964f-9aa46abd890b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0485e0eb-e537-4adb-a06e-5cf677388f85"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7b1d78e9-fc1c-4871-87e7-80c0369ce2d3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["5ed96cad-e8dc-458f-837c-4675889193fb"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0e947dc7-40bc-49da-8f49-2a543c03131c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2cc24189-13c9-464b-b1c8-60d742e2b2a0"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["e2eb25e6-1da2-4c3f-ac08-b58b227f3e7d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Fighter
        ["aafbbc41-16e8-4296-a283-a2c5fdd0625b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7535f41a-d360-4adc-8166-9d2e29660b1d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["ee6dffc7-962c-4ed6-8426-6b74537573f3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["fd8c7802-f1b9-4d0c-b2e9-191c3e7dd193"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["6f96237b-2d98-4083-a8b6-1719c8100098"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Monk
        ["c17915f1-df2b-4cce-876f-68faf153f373"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["9286a35f-e58b-4f56-95a4-78dfb19ed5d5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["153f55a7-4c75-4748-a9f7-a756239a3fe6"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["63d476e5-c399-4b4e-b505-4f92ac5194b3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["5a0d6438-9870-42b4-a845-40f0bc60ca60"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["eee94729-a510-4d74-aec2-17d523640785"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["51f0e9b1-bf75-4a87-9332-f5d65e4bcc73"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Paladin
        ["d6c11773-888b-47a3-9dfa-e247bcbd461a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["a3fcceed-a1e9-4300-8032-83c573640b19"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["270310b6-e20c-4072-97ba-a1133ecaf6d5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["5b02fb54-ab78-43b7-9873-9c8b66d9f694"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["969108d9-e59c-44ee-8014-b4c1411eb258"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["60287c8d-a7f2-46a8-b0e0-f017497af86c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["bcba6cc1-3b0a-4562-ac80-0259108ecb36"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Ranger
        ["b9c3b0e1-38e6-4383-90d5-cb7e65348474"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["774f7a73-3a29-404c-898b-e8810f41a8ba"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["26e69682-2b1b-48c5-ad8d-6e6e31601a8b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["92e46062-56ac-4ace-8f94-fac67134fa81"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["90011772-ca07-4efa-a536-a0a5a4d964dd"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["27a64582-2962-44a3-af5e-9f09883849da"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["8de58ca2-5b78-45f0-9271-f213fda39dd6"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Rogue
        ["35863719-e935-4757-a9f3-eb38a8cd8cb7"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7e1ce634-c599-427a-b992-d4208ce99e6d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["3481eb52-4b81-4ccc-865d-e43b039afea4"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["94635384-a6be-4f90-bbe9-4abd4003b6c3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0ce79f29-1506-40b8-a2b7-8654c54f3050"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["9c927b1d-ec7e-4d57-ae8b-537bbfa051ac"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0ce79f29-1506-40b8-a2b7-8654c54f3050"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
-- Sorcerer
        ["706a869d-7894-453d-b6ac-9428f617649c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["d4e27787-6ff8-47ac-9556-a71992f7e596"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["1c091ba4-d911-4c48-99ed-da58463f2ed3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["b68229cb-73af-432e-89d4-1a6b4f06ead8"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["77c92e79-3b58-44f8-98ae-6cb1c39a65ad"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["3b8feb72-3afd-4fed-8cbb-959861a876a6"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["dc1bb28a-90d2-420f-9164-5cdc48fa3b5d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Warlock
        ["4de835bb-b7d0-47d8-aaea-596b4204a32a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["9c14356e-404b-4d32-99ce-5d8435be2a8f"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["f7ded500-4f08-4fe8-b325-85d5b6bbeb86"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["67a28bc6-4a9e-4b10-a755-31487f9bc50e"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0a94300c-1717-42f0-b855-3dd49dd02e13"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["8d20c2aa-422d-4b69-b9e7-44004c502c91"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["bbac3e70-ff9a-4055-8ee9-7ea81a4141ec"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Wizard
        ["d6184c47-5b99-4e63-95ac-02f8ce4ccda1"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["27465c53-f521-49e0-871a-2a45b9f557bf"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["8268be8b-fe73-4dc6-82a3-beeab3ebed49"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["f7ba7e51-6a15-46a1-8774-bfa1379063d2"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["98c3a306-df24-457a-824b-60c379e0d103"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["b775cba1-8e52-467b-9b6f-dbedad5b3ed7"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["9fe27693-866f-4fb6-8604-d7bc81f83916"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
    },
}

local EXP_Every3rdLevel_Progressions

function EXP_Every3rdLevelFeats()
    EXP_ApplyStaticData(EXP_Every3rdLevel_Progressions)
end

EXP_Every3rdLevel_Progressions = {
    ["Progression"] = {
-- Barbarian
        ["0d4a6b4b-8162-414b-81ef-1838e36e778a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["942265f9-bb74-4f9b-82e4-0c8c8036ac7f"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["2c296206-6a78-4ff4-8b5e-a8ba7c62a62a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["26c5e940-6f74-43a1-b46e-7eb98e211cf5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["2b2be55c-8c01-4bcd-84ff-b4c9ca23faf8"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0c6703f5-4ecf-45af-89d5-e27dc6c48dc4"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["b0a0af2e-de48-48f9-96e6-9eea017ee13b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["fdff97a8-a514-404a-855c-19b8dc3a61e2"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["f290f4fc-c19d-427b-a526-55cc068e6162"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
-- Bard
        ["26f64038-6033-48d5-9da7-38e8c95ce712"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c58396f8-4cdb-47e8-bba3-36d8c59406ea"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["c3fc8172-ca21-46e1-9447-e856ad063689"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["b08fd01b-47e9-455c-83fc-075323142456"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["b1f811c8-4831-488a-bd1d-47e9883d2823"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["453bd5fd-8cec-4ea7-9aef-bfaf07dcc116"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["37b6d82e-17ef-457f-8e0a-01453aec7104"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["d52893d6-746e-44f8-a7c9-f6d8f4d0e17b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2582b513-dec4-472c-aaa1-9febaa2385bf"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
-- Cleric
        ["4d9072bb-7b14-43b9-afb2-0d7e89f90c65"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["051cd419-b843-4996-807e-d0ac78084ef0"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["1ba0c22a-2655-4f3c-8bf8-f3314587ccaa"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4cfd9e91-38ef-4b24-8a2a-9b736be91cf8"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["4472e936-7c8e-40a1-a818-49117fc03361"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["8ff87c2e-2ff7-40d6-973f-68af4579fe28"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4391ca3e-c54a-4116-aafb-4ed4879a7f27"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["df19223d-09be-4007-b05d-c94c9ea85420"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["dc375fe5-6a6c-4ab2-9397-e2dff4b7607b"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
-- Druid
        ["ce4b9b17-8afb-4fa4-8f01-742da3c3cf26"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["100feb8e-10dd-4892-acf5-7671e7063171"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["37a94de9-9097-4775-8aea-9f13b8d2bf93"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["bc7df415-ed9a-416d-8c6e-10a432b1995c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["c44e50a3-6790-40ac-ab11-3c1b1b9764ba"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c62b2fb0-6680-4361-83c7-6359b3e7d3db"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0fc3e0b0-c2d2-4514-a1d4-92f43a0b61d8"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["0e947dc7-40bc-49da-8f49-2a543c03131c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2cc24189-13c9-464b-b1c8-60d742e2b2a0"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
-- Fighter
        ["23eacff0-9efe-4ea6-b031-19075cc96b63"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["05f6a6ef-a574-4317-b9e4-e710975e07b4"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["f6fbe4d4-ec8b-4b88-9851-d9aa398efb7f"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["5f69e04b-1d97-481c-995f-a069dfb9f555"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["ee7d20f2-e3cd-48f3-a254-82a27c90c94d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7c469977-c4fd-4146-86e7-ebbad6df6501"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["ee6dffc7-962c-4ed6-8426-6b74537573f3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["fd8c7802-f1b9-4d0c-b2e9-191c3e7dd193"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
-- Monk
        ["296468cb-3640-4460-9f44-b30ee820a9ed"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["e2bd97c2-4de1-43eb-bbeb-6383c472a4a2"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["9286a35f-e58b-4f56-95a4-78dfb19ed5d5"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["584f5806-6809-4fbf-8776-843ba611a404"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["62d54d84-80f8-4c89-9a1a-6b15aeaf697a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["eba2927b-243e-4c61-982c-ce766d2e0140"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2f61750b-9457-4ce7-bc30-caf7edff12e8"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["5a0d6438-9870-42b4-a845-40f0bc60ca60"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["eee94729-a510-4d74-aec2-17d523640785"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
-- Paladin
        ["31c12f48-d62f-4e83-b475-10ed9068c9dd"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["4f2c7b4e-2f91-4105-a136-9387a8cfed4f"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["a3fcceed-a1e9-4300-8032-83c573640b19"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["396096c9-768c-4df8-a0b9-35c06478b752"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["fada82ce-7f21-4b4d-9f08-5440848a7c1d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["65c6b594-c4f9-4fc6-9882-47fffc39a0bb"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["7a50a223-45d3-4903-9d24-422ecdaf467e"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["969108d9-e59c-44ee-8014-b4c1411eb258"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["60287c8d-a7f2-46a8-b0e0-f017497af86c"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
-- Ranger
        ["e6179c57-47e9-4f83-831e-28b73f4b5d0d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["69c0c0a3-d22a-4f5e-ac64-3a972b58d848"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["774f7a73-3a29-404c-898b-e8810f41a8ba"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["12b9a506-33c9-4dcf-81a1-ab8df2023e8e"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["13821b69-d8b5-4179-a1fc-fa9dcfcc2561"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["77da3350-ccb1-4868-aaf5-5a2f052cf909"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["66872abe-44de-4727-899c-63fded6d5885"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["90011772-ca07-4efa-a536-a0a5a4d964dd"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
-- Rogue
        ["6f8d3e70-9b20-4fe0-914f-0f8f19206329"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["a353b31a-23c3-44f6-9a7b-ec3218872387"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["7e1ce634-c599-427a-b992-d4208ce99e6d"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["cb381a33-84b1-4d76-8a9b-b11d6d917a15"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["a32481e5-e514-4011-9de9-4e3cba389ee0"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["30232ef9-9693-48a2-aa3e-8999df0cbe9f"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["53e54e22-2f4f-43fb-867a-26ebd1369551"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["94635384-a6be-4f90-bbe9-4abd4003b6c3"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["0ce79f29-1506-40b8-a2b7-8654c54f3050"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
-- Sorcerer
        ["e60b351e-aa26-4c5e-bbdc-ce5c8af03b5a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["ef6299b9-7a3f-470c-9b5a-d02ba2b87d54"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["d4e27787-6ff8-47ac-9556-a71992f7e596"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c5c45a54-6387-4328-ad65-ceddc13d3221"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["aeaf2dab-26b6-4e0a-9a3d-06aac901232e"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["60a22b31-3abf-401c-85d8-25b7940549a2"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["12a5ad09-f86f-495b-b05a-69d548819744"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["77c92e79-3b58-44f8-98ae-6cb1c39a65ad"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["3b8feb72-3afd-4fed-8cbb-959861a876a6"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
-- Warlock
        ["da1ea937-f361-4dc6-abb1-1e7153e2a6de"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["646869be-8307-4e1f-93d7-eeedac71e756"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["9c14356e-404b-4d32-99ce-5d8435be2a8f"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["2de88333-157c-48e0-a965-e498af5413e7"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["bb998812-dab7-4d0e-aa58-d9b1fb8b3688"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["9d27c48e-930f-42ce-a4a7-188005d51304"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["237669b6-a8f6-47ef-b1d4-8daf0651b020"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["0a94300c-1717-42f0-b855-3dd49dd02e13"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["8d20c2aa-422d-4b69-b9e7-44004c502c91"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
-- Wizard
        ["314ad8a4-bf06-4774-bb23-7db0090b51b9"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["ba8743c7-bc11-46ad-8512-be6fee2c8534"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["27465c53-f521-49e0-871a-2a45b9f557bf"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["c7f6df40-9d4f-4039-8a29-9bcd5efb3b6a"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["4e4e702e-1ee1-4f31-a0a4-2d898ab6b741"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["442822fc-eb70-4617-9d9e-3129b3018550"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["5063c5e0-5c45-44a2-af1f-fbe772d01662"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
        ["98c3a306-df24-457a-824b-60c379e0d103"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = true,
            },
		},
        ["b775cba1-8e52-467b-9b6f-dbedad5b3ed7"] = {
            ["AllowImprovement"] = {
                ["Type"] = "overwrite",
                ["Value"] = false,
            },
		},
    },
}

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

-------------------------------- Proficiency Bonus Scaling --------------------------------

function EXP_ProficiencyBonusScaling()
	for _, name in pairs(Ext.Stats.GetStats("Character")) do
		local char = Ext.Stats.Get(name)
		char.Passives = "EXP_ProficiencyBonusScaling" .. ";" .. char.Passives
	end
end

-------------------------------- Blindsense and Others --------------------------------

function EXP_Blindsense()
	for _, name in pairs(Ext.Stats.GetStats("StatusData")) do
		local invisstatus = Ext.Stats.Get(name)
		if invisstatus.StatusType == "INVISIBLE" and string.find(invisstatus.Boosts, "Advantage") and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target,context.Source)):Advantage(AttackRoll);" and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target,context.Source)):Advantage(AttackRoll); Skill(Stealth, 10)" and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target,context.Source)):Advantage(AttackRoll); UnlockSpell(Target_MistyStep_Free)" and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target,context.Source)):Advantage(AttackRoll); Advantage(Skill, Stealth)" then
			invisstatus.Boosts = string.gsub(invisstatus.Boosts, "Advantage", "IF(not EXP_CanSeeInvisible(context.Target,context.Source) and not IsElusive(context.Target)):Advantage")
			invisstatus.Boosts = invisstatus.Boosts .. ";IF(not EXP_CanSeeInvisible() and not IsElusive()):Disadvantage(AttackTarget)"
		end
	end
end

---------------------------------------- Elusive ----------------------------------------

function EXP_Elusive()
	local ainit = Ext.Stats.Get("Assassinate_Initiative")
	ainit.Boosts = "IF(Combat(context.Source) and Combat() and not HadTurnInCombat() and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local soppoa = Ext.Stats.Get("Sentinel_OpportunityAdvantage")
	soppoa.Boosts = "IF(SpellId('Target_Sentinel_AttackOfOpportunity') and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local bredcap = Ext.Stats.Get("BloodThirsty_Redcap")
	bredcap.Boosts = "IF(HasStatus('BLEEDING',context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local ptactics = Ext.Stats.Get("PackTactics")
	ptactics.Boosts = "IF(HasAllyWithinRange('SG_Incapacitated',3) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local pfduer = Ext.Stats.Get("PhalanxFormation_Duergar")
	pfduer.Boosts = "IF(HasAllyWithinRange('SG_Incapacitated',3,nil,1) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local dsense = Ext.Stats.Get("DIVINE_SENSE")
	dsense.Boosts = "IF(Tagged('CELESTIAL') and not IsElusive(context.Target)):Advantage(AttackRoll);IF(Tagged('FIEND') and not IsElusive(context.Target)):Advantage(AttackRoll);IF(Tagged('UNDEAD') and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local ratk = Ext.Stats.Get("RECKLESS_ATTACK")
	ratk.Boosts = "IF(IsMeleeAttack() and not IsElusive(context.Target)):Advantage(AttackRoll);IF(IsRangedUnarmedAttack() and not IsElusive(context.Target)):Advantage(AttackRoll);Advantage(AttackTarget)"
	local gptactics = Ext.Stats.Get("GNOLL_PACKTACTICS")
	gptactics.Boosts = "IF(not IsElusive(context.Target)):Advantage(AttackRoll)"
	local rmino = Ext.Stats.Get("RECKLESS_MINOTAUR")
	rmino.Boosts = "IF(not IsElusive(context.Target)):Advantage(AttackRoll);Advantage(AttackTarget);"
	local sstep = Ext.Stats.Get("SHADOW_STEP")
	sstep.Boosts = "IF(IsMeleeAttack() and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local rsah = Ext.Stats.Get("RAGE_SAHUAGIN")
	rsah.Boosts = "IF(not HasMaxHP() and IsMeleeAttack() and not (Tagged('CONSTRUCT') or Tagged('OOZE') or Tagged('PLANT') or Tagged('ELEMENTAL')) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local aeta = Ext.Stats.Get("ALCH_ELIXIR_TADPOLE_ADVANTAGE")
	aeta.Boosts = "IF(not IsElusive(context.Target)):Advantage(AttackRoll)"
	local bboooal = Ext.Stats.Get("UND_BlessingOfBOOOAL")
	bboooal.Boosts = "IF(HasStatus('BLEEDING',context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local clua = Ext.Stats.Get("MAG_ChargedLightning_UnarmedAttackAdvantage_Passive")
	clua.Boosts = "IF(HasStatus('MAG_CHARGED_LIGHTNING', context.Source) and (HasMetalArmor(context.Target) or IsMetalCharacter(context.Target)) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local clca = Ext.Stats.Get("MAG_ChargedLightning_ChargeAdvantage_Passive")
	clca.Boosts = "IF(not IsElusive(context.Target)):Advantage(AttackRoll)"
	local bogift = Ext.Stats.Get("UND_BOOOALGIFT")
	bogift.Boosts = "UseBoosts(IF(HasStatus('BLEEDING',context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll))"
	local fragi = Ext.Stats.Get("UND_FEARFULROTHE_AGITATED")
	fragi.Boosts = "IF(not IsElusive(context.Target)):Advantage(AttackRoll)"
	local hagdm = Ext.Stats.Get("HAG_DISGUISE_MAYRINA")
	hagdm.Boosts = "ActionResourceBlock(ReactionActionPoint);IF(not IsElusive(context.Target)):Advantage(AttackRoll);UnlockSpell(Target_HAG_SinisterStrike);"
	local ppwis = Ext.Stats.Get("TWN_PlaquePuzzle_Wisdom")
	ppwis.Boosts = "Advantage(SavingThrow, Wisdom);IF(IsSpell() and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local ppint = Ext.Stats.Get("TWN_PlaquePuzzle_Intelligence")
	ppint.Boosts = "Advantage(SavingThrow, Intelligence);IF(IsSpell() and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local ppcha = Ext.Stats.Get("TWN_PlaquePuzzle_Charisma")
	ppcha.Boosts = "Advantage(SavingThrow, Charisma);IF(IsSpell() and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local darkven = Ext.Stats.Get("SHA_DarkVengeance")
	darkven.Boosts = "IF(not HasObscuredState(ObscuredState.Clear) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local darklf = Ext.Stats.Get("SHA_DarkLifeforce")
	darklf.Boosts = "IF(HasStatus(DOWNED) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local mkiss = Ext.Stats.Get("SHA_MistressKiss")
	mkiss.Boosts = "IF(not HasObscuredState(ObscuredState.Clear) and not IsElusive(context.Target)):Advantage(AttackRoll); "
	local ratc = Ext.Stats.Get("TWN_RatCatcher_Passive")
	ratc.Boosts = "IF(Tagged('BEAST', context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local ghip = Ext.Stats.Get("LOW_Guildhall_IsolatedPrey")
	ghip.Boosts = "IF(not HasAllyWithinRange('SG_Incapacitated',1.5) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local sblade = Ext.Stats.Get("ShadowBlade_Passive")
	sblade.Boosts = "IF(AttackedWithPassiveSourceWeapon() and not HasObscuredState(ObscuredState.Clear) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local zocg = Ext.Stats.Get("MAG_ZOC_AdvantageOnMeleeAttackWhileSurounded_Gloves_Passive")
	zocg.Boosts = "IF(IsMeleeAttack() and IsWeaponAttack() and HasEnemyWithinRange('SG_Incapacitated', 3, nil, 2, context.Target, context.Source) and not IsElusive(context.Target)):Advantage(AttackRoll);"
	local gslayer = Ext.Stats.Get("MAG_Giantslayer_Passive")
	gslayer.Boosts = "IF(SizeEqualOrGreater(Size.Large) and HasStatus('MAG_GIANTSLAYER_ADVANTAGE_TECHNICAL', GetAttackWeapon()) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local rlight = Ext.Stats.Get("MAG_LC_RadiantLight_Rapier_Passive")
	rlight.Boosts = "IF(Tagged('UNDEAD', context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local mhunter = Ext.Stats.Get("MAG_LC_MonsterHunter_Passive")
	mhunter.Boosts = "IF(Tagged('MONSTROSITY', context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local umcold = Ext.Stats.Get("MAG_LC_Umberlee_Cold_Sickle_Passive")
	umcold.Boosts = "IF(HasStatus('WET', context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local spbreaker = Ext.Stats.Get("MAG_Spellbreaker_Battleaxe_Passive")
	spbreaker.Boosts = "IF(IsConcentrating(context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local riskatk = Ext.Stats.Get("MAG_RiskyAttack_Passive")
	riskatk.Boosts = "IF(not IsElusive(context.Target)):Advantage(AttackRoll);Disadvantage(AllSavingThrows)"
	local seekspl = Ext.Stats.Get("MAG_Sorcerer_MM_SeekingSpell")
	seekspl.Boosts = "UnlockSpellVariant(SpellAttackCheck(),ModifyIconGlow(),ModifyTooltipDescription(),ModifyUseCosts(Add,SorceryPoint,SpellPowerLevel,0));IF(IsSpell() and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local reactatk = Ext.Stats.Get("MAG_AdvantageOnReactionAttack_Passive")
	reactatk.Boosts = "IF(IsReactionAttack() and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local frgtadv = Ext.Stats.Get("MAG_FrightenedAdvantage_Passive")
	frgtadv.Boosts = "IF(HasStatus('SG_Frightened', context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local shasadv = Ext.Stats.Get("SHA_NIGHTSONG_SHADOWSTEP_ADVANTAGE")
	shasadv.Boosts = "IF(not IsElusive(context.Target)):Advantage(AttackRoll)"
	local githat = Ext.Stats.Get("TWN_GITHRADAR_ALERT")
	githat.Boosts = "Initiative(5);IF(not IsElusive(context.Target)):Advantage(AttackRoll)"
	local devilf = Ext.Stats.Get("LOW_DEVILSFEE_BUFF")
	devilf.Boosts = "IF(HasStatus('LOW_DEVILSFEE_WEALTH',context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll);CharacterWeaponDamage(6d6,Piercing);"
	local ngtbless = Ext.Stats.Get("LOW_RAMAZITHSTOWER_NIGHTSONG_BLESSING")
	ngtbless.Boosts = "IF(not IsElusive(context.Target)):Advantage(AttackRoll);TemporaryHP(100);Ability(Charisma,4);Ability(Strength,4);Resistance(Fire,Resistant);Resistance(Cold,Resistant);Resistance(Lightning,Resistant);"
	local itmizora = Ext.Stats.Get("LOW_IRONTHRONE_MIZORA_GRIEF")
	itmizora.Boosts = "IF(not IsElusive(context.Target)):Advantage(AttackRoll);Disadvantage(AllAbilities)"
	local raphds = Ext.Stats.Get("LOW_RAPHAEL_DEVILLISHSTRENGTH_STATUS")
	raphds.Boosts = "Advantage(Ability, Strength);Advantage(SavingThrow, Strength);IF(not IsElusive(context.Target)):Advantage(AttackRoll);Advantage(Ability, Dexterity);Advantage(SavingThrow, Dexterity);"
	local githamu = Ext.Stats.Get("CRE_MAG_GITHBORN_AMULET")
	githamu.Boosts = "IF(Tagged('ABERRATION') and not IsElusive(context.Target)):Advantage(AttackRoll)"
	local pamagi = Ext.Stats.Get("POTION_OF_THE_ARCHMAGI")
	pamagi.Boosts = "IF(IsSpell() and not IsElusive(context.Target)):Advantage(AttackRoll);UnlockSpellVariant(HeightenedSpellCheck(), ModifySavingThrowDisadvantage())"
	local pgarcher = Ext.Stats.Get("POTION_OF_THE_GREATARCHER")
	pgarcher.Boosts = "IF(HasStatus('LOW_DEVILSFEE_WEALTH',context.Target) and not IsElusive(context.Target)):Advantage(AttackRoll);CharacterWeaponDamage(6d6,Piercing);"
	local conmode = Ext.Stats.Get("MAG_CONSTRUCT_MODE")
	conmode.Boosts = "Tag(CONSTRUCT);Resistance(Lightning, Resistant);IF(IsWeaponAttack() and not IsElusive(context.Target)):Advantage(AttackRoll);UnlockSpell(Shout_MAG_Dismiss_CircuitryInterface)"
	local drunkrage = Ext.Stats.Get("MAG_DRUNKARD_RAGE")
	drunkrage.Boosts = "IF(not IsElusive(context.Target)):Advantage(AttackRoll)"
	local monksatw = Ext.Stats.Get("MAG_MONK_SWIFT_AS_THE_WIND")
	monksatw.Boosts = "IF(not IsElusive(context.Target)):Advantage(AttackRoll);CharacterWeaponDamage(1d8, Force)"
	local invwpn = Ext.Stats.Get("MAG_INVISIBLE_WEAPON_OWNER")
	invwpn.Boosts = "IF(IsMeleeWeaponAttack() and not IsElusive(context.Target)):Advantage(AttackRoll);IF(IsMeleeWeaponAttack()):ReduceCriticalAttackThreshold(1)"
	local tstrike = Ext.Stats.Get("TRUE_STRIKE")
	tstrike.Boosts = "IF(not IsElusive(context.Target)):" .. tstrike.Boosts
	local vowoe = Ext.Stats.Get("VOW_OF_ENMITY")
	vowoe.Boosts = "IF(not IsElusive(context.Target)):" .. vowoe.Boosts
	local kyenemy = Ext.Stats.Get("KNOW_YOUR_ENEMY")
	kyenemy.Boosts = "IF(not IsElusive(context.Target)):" .. kyenemy.Boosts
	local kethfied = Ext.Stats.Get("MOO_MAG_KETHERIC_STUPEFIED")
	kethfied.Boosts = "ActionResourceMultiplier(Movement, 50,0);IF(not IsElusive(context.Target)):SourceAdvantageOnAttack()"
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
	EXP_ApplyStaticData(EXP_MysticArcanum_Progressions)
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

local barbarianenabled = EXP_Barbarianconfig["Enabled"]
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

local function EXP_StatsLoaded()
	EXP_ActionSurge()
	EXP_BlessedStrikes()
	EXP_MartialArts()
	EXP_ProficiencyBonusScaling()
	EXP_Blindsense()
	EXP_Elusive()
	EXP_Paladin_Auras()
	EXP_BeastMaster()
	EXP_RAWChanges()
	EXP_5ESpellChanges()

	if (Ext.Mod.IsModLoaded("fb5f528d-4d48-4bf2-a668-2274d3cfba96")) then
		EXP_MysticArcanum()
	else
		return
	end

	if	barbarianenabled == true then
		print(string.format("Expansion: Barbarian's Optional Features enabled."))
		EXP_Barbarian()
	elseif	barbarianenabled ~= true  then
		print(string.format("Expansion: Barbarian's Optional Features disabled."))
	end

	if	bardenabled == true then
		print(string.format("Expansion: Bard's Optional Features enabled."))
		EXP_Bard()
	elseif	bardenabled ~= true then
		print(string.format("Expansion: Bard's Optional Features disabled."))
	end

	if	clericenabled == true then
		print(string.format("Expansion: Cleric's Optional Features enabled."))
		EXP_Cleric()
	elseif	clericenabled ~= true then
		print(string.format("Expansion: Cleric's Optional Features disabled."))
		EXP_DivinePower()
	end

	if	druidenabled == true then
		print(string.format("Expansion: Druid's Optional Features enabled."))
		EXP_Druid()
	elseif	druidenabled ~= true then
		print(string.format("Expansion: Druid's Optional Features disabled."))
	end

	if	fighterenabled == true then
		print(string.format("Expansion: Fighter's Optional Features enabled."))
		EXP_Fighter()
	elseif	fighterenabled ~= true then
		print(string.format("Expansion: Fighter's Optional Features disabled."))
	end

	if	monkenabled == true then
		print(string.format("Expansion: Monk's Optional Features enabled."))
		EXP_Monk()
	elseif	monkenabled ~= true then
		print(string.format("Expansion: Monk's Optional Features disabled."))
	end

	if	paladinenabled == true then
		print(string.format("Expansion: Paladin's Optional Features enabled."))
		EXP_Paladin()
	elseif	paladinenabled ~= true then
		print(string.format("Expansion: Paladin's Optional Features disabled."))
		EXP_DivinePower_Paladin()
	end

	if	rangerenabled == true then
		print(string.format("Expansion: Ranger's Optional Features enabled."))
		EXP_Ranger()
	elseif	rangerenabled ~= true then
		print(string.format("Expansion: Ranger's Optional Features disabled."))
	end

	if	rogueenabled == true then
		print(string.format("Expansion: Rogue's Optional Features enabled."))
		EXP_Rogue()
	elseif	rogueenabled ~= true then
		print(string.format("Expansion: Rogue's Optional Features disabled."))
	end

	if	sorcererenabled == true then
		print(string.format("Expansion: Sorcerer's Optional Features enabled."))
		EXP_Sorcerer()
	elseif	sorcererenabled ~= true then
		print(string.format("Expansion: Sorcerer's Optional Features disabled."))
	end

	if	sorcerer14thenabled == true then
		print(string.format("Expansion: Enabled changing Sorcerer Subclasses' 11th level feature to 14th level."))
		EXP_Sorcerer_14thLevel()
	elseif	sorcerer14thenabled ~= true then
		print(string.format("Expansion: Disabled changing Sorcerer Subclasses' 11th level feature to 14th level."))
	end

	if	wizardenabled == true then
		print(string.format("Expansion: Wizard's Optional Features enabled."))
		EXP_Wizard()
	elseif	wizardenabled ~= true then
		print(string.format("Expansion: Wizard's Optional Features disabled."))
	end

	if	bladesingerenabled == true then
		print(string.format("Expansion: Switching the Wizard Bladesinger's Song of Victory feature to 12th level."))
		EXP_WizardBladesinger()
	elseif	bladesingerenabled ~= true then
		print(string.format("Expansion: Keeping the Wizard Bladesinger's Song of Victory feature to 14th level."))
	end
	
	if	secondlvlfeatenabled == true and secondthirdlvlfeatenabled ~= true and everylvlfeatenabled ~= true and everysecondlvlfeatenabled ~= true and everythirdlvlfeatenabled ~= true then
		print(string.format("Expansion: Feat granted at 2nd level in classes."))
		EXP_2ndLevelFeats()
	elseif	secondlvlfeatenabled ~= true and secondthirdlvlfeatenabled == true and everylvlfeatenabled ~= true and everysecondlvlfeatenabled ~= true and everythirdlvlfeatenabled ~= true then
		print(string.format("Expansion: Feat granted at 2nd and 3rd level in classes."))
		EXP_2ndAnd3rdLevelFeats()
	elseif	secondlvlfeatenabled ~= true and secondthirdlvlfeatenabled ~= true and everylvlfeatenabled == true and everysecondlvlfeatenabled ~= true and everythirdlvlfeatenabled ~= true then
		print(string.format("Expansion: Feat granted at every level in classes."))
		EXP_EveryLevelFeats()
	elseif	secondlvlfeatenabled ~= true and secondthirdlvlfeatenabled ~= true and everylvlfeatenabled ~= true and everysecondlvlfeatenabled == true and everythirdlvlfeatenabled ~= true then
		print(string.format("Expansion: Feat granted at every 2nd level in classes."))
		EXP_Every2ndLevelFeats()
	elseif	secondlvlfeatenabled ~= true and secondthirdlvlfeatenabled ~= true and everylvlfeatenabled ~= true and everysecondlvlfeatenabled ~= true and everythirdlvlfeatenabled == true then
		print(string.format("Expansion: Feat granted at every 3rd level in classes."))
		EXP_Every3rdLevelFeats()
	elseif	secondlvlfeatenabled == true and secondthirdlvlfeatenabled == true and everylvlfeatenabled ~= true and everysecondlvlfeatenabled ~= true and everythirdlvlfeatenabled ~= true then
		print(string.format("Expansion: Multiple feat options were selected so defaulting to the highest. Feat granted at 2nd and 3rd level in classes."))
		EXP_2ndAnd3rdLevelFeats()
	elseif	secondlvlfeatenabled == true and secondthirdlvlfeatenabled == true and everylvlfeatenabled ~= true and everysecondlvlfeatenabled ~= true and everythirdlvlfeatenabled == true then
		print(string.format("Expansion: Multiple feat options were selected so defaulting to the highest. Feat at every 3rd level in classes."))
		EXP_Every3rdLevelFeats()
	elseif	secondlvlfeatenabled == true and secondthirdlvlfeatenabled == true and everylvlfeatenabled ~= true and everysecondlvlfeatenabled == true and everythirdlvlfeatenabled == true then
		print(string.format("Expansion: Multiple feat options were selected so defaulting to the highest. Feat at every 2nd level in classes."))
		EXP_Every2ndLevelFeats()
	elseif	secondlvlfeatenabled == true and secondthirdlvlfeatenabled == true and everylvlfeatenabled == true and everysecondlvlfeatenabled == true and everythirdlvlfeatenabled == true then
		print(string.format("Expansion: Multiple feat options were selected so defaulting to the highest. Feat at every level in classes."))
		EXP_EveryLevelFeats()
	end
end
Ext.Events.StatsLoaded:Subscribe(EXP_StatsLoaded)