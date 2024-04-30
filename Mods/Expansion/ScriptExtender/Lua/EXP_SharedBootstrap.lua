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
        ["26e69682-2b1b-48c5-ad8d-6e6e31601a8b"] = {
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
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
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
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
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
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
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
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
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
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
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
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
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
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
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
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
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
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
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
                        UUID = "da3203d8-750a-4de1-b8eb-1eccfccddf46"
                },
                },
            },
		},
        ["26e69682-2b1b-48c5-ad8d-6e6e31601a8b"] = {
            ["SelectPassives"] = {
                ["Type"] = "add",
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
                }
                },
            },
            ["AddSpells"] = {
                ["Type"] = "overwrite",
                ["Value"] = {
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
	if (Ext.Mod.IsModLoaded("fb5f528d-4d48-4bf2-a668-2274d3cfba96")) then
		return
	else
		for _, name in pairs(Ext.Stats.GetStats("StatusData")) do
			local invisstatus = Ext.Stats.Get(name)
			if invisstatus.StatusType == "INVISIBLE" and string.find(invisstatus.Boosts, "Advantage") and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target)):Advantage(AttackRoll);" and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target)):Advantage(AttackRoll); Skill(Stealth, 10)" and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target)):Advantage(AttackRoll); UnlockSpell(Target_MistyStep_Free)" and invisstatus.Boosts ~= "IF(not CanSeeInvisible()):Disadvantage(AttackTarget); IF(not CanSeeInvisible(context.Target)):Advantage(AttackRoll); Advantage(Skill, Stealth)" then
				invisstatus.Boosts = string.gsub(invisstatus.Boosts, "Advantage", "IF(not EXP_CanSeeInvisible(context.Target) and not IsElusive(context.Target)):Advantage")
				invisstatus.Boosts = invisstatus.Boosts .. ";IF(not EXP_CanSeeInvisible() and not IsElusive()):Disadvantage(AttackTarget)"
			end
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
local sorcerer14thenabled = EXP_Sorcerer14thconfig["Enabled"]
local wizardenabled = EXP_Wizardconfig["Enabled"]
local bladesingerenabled = EXP_Bladesingerconfig["Enabled"]

local function EXP_StatsLoaded()
	EXP_ActionSurge()
	EXP_BlessedStrikes()
	EXP_MartialArts()
	EXP_ProficiencyBonusScaling()
	EXP_Blindsense()
	EXP_Elusive()
	EXP_Paladin_Auras()
	
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
end
Ext.Events.StatsLoaded:Subscribe(EXP_StatsLoaded)