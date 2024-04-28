if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    CelesBladesinging = {
      modGuid = "a2c4b0fc-e745-41df-81b7-fa53950d86a0",
      subClassGuid = "3fd79523-a973-4373-a973-732344acc959",
      class = "wizard",
      subClassName = "Bladesinging"
    }
  }

  local function OnStatsLoaded()
    Mods.SubclassCompatibilityFramework = Mods.SubclassCompatibilityFramework or {}
    Mods.SubclassCompatibilityFramework.API = Mods.SubclassCompatibilityFramework.Api or {}
    Mods.SubclassCompatibilityFramework.API.InsertSubClasses(subClasses)
  end

Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)

end