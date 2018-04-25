--keep everything stored in
ChoGGi = {
  SettingsFile = "AppData/CheatMenuModSettings.lua",
  ModPath = "AppData/Mods/CheatMod_CheatMenu/",
  StartupMsgs = {},
  OrigFunc = {},
  CheatMenuSettings = {},
}

--used to let me know if we're on my computer
local file_error, _ = AsyncFileToString("AppData/ChoGGi.lua")
if not file_error then
  ChoGGi.Testing = true
end

--get saved settings for this mod
dofile(ChoGGi.ModPath .. "Settings.lua")
--read settings from AppData/CheatMenuModSettings.lua
ChoGGi.ReadSettings()

--function overrides / shortened func names
dofile(ChoGGi.ModPath .. "ReplacedFunctions.lua")
--functions needed for before Code/ is loaded
dofile(ChoGGi.ModPath .. "Functions.lua")
--load all my other files
dofolder_files(ChoGGi.ModPath .. "Code")

--if writelogs option
if ChoGGi.CheatMenuSettings.WriteLogs ~= false then
  table.insert(ChoGGi.StartupMsgs,"ChoGGi: Writing debug/console logs to AppData/logs")
  ChoGGi.WriteLogsEnable()
end

--first time run info
if ChoGGi.CheatMenuSettings.FirstRun ~= false then
  table.insert(ChoGGi.StartupMsgs,"\nCheatMenu Active:\nF2 to toggle menu\nDebug>Console History to toggle console history.\n\n\n")
  ChoGGi.CheatMenuSettings.FirstRun = false
  ChoGGi.Init_WriteSettings = 1
end

--make sure to save anything we changed above
if ChoGGi.Init_WriteSettings then
  ChoGGi.WriteSettings()
end

Platform.editor = true
config.LuaDebugger = true
GlobalVar("outputSocket", false)
dofile("CommonLua/Core/luasocket.lua")
dofile("CommonLua/Core/luadebugger.lua")
dofile("CommonLua/Core/luaDebuggerOutput.lua")
dofile("CommonLua/Core/ProjectSync.lua")
config.LuaDebugger = false
Platform.editor = false

--[[
ClassesGenerate
ClassesPreprocess
ClassesPostprocess
ClassesBuilt
OptionsApply
Autorun
ModsLoaded
EntitiesLoaded
BinAssetsLoaded
--]]
