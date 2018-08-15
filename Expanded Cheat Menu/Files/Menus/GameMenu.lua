--See LICENSE for terms

local Concat = ChoGGi.ComFuncs.Concat
local AddAction = ChoGGi.ComFuncs.AddAction
local S = ChoGGi.Strings

--~ local icon = "new_city.tga"

--~ AddAction(Entry,Menu,Action,Key,Des,Icon)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/",S[302535920001292--[[List All Objects--]]]),
  ChoGGi.MenuFuncs.ListAllObjects,
  nil,
  302535920001293--[[A list of objects; double-click on one to select and move the camera to it.--]],
  "select_objects.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/",S[302535920000864--[[Delete All Rocks--]]]),
  ChoGGi.MenuFuncs.DeleteAllRocks,
  nil,
  302535920001238--[[Removes most rocks for that smooth map feel (will take about 30 seconds).--]],
  "selslope.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/",S[302535920000485--[[Flatten Terrain Toggle--]]]),
  ChoGGi.MenuFuncs.FlattenTerrain_Toggle,
  ChoGGi.UserSettings.KeyBindings.FlattenTerrain_Toggle,
  302535920000486--[[Use the shortcut to turn this on as it will use where your cursor is as the height to flatten to.

Use Shift + Arrow keys to change the height/radius.--]],
  "FixUnderwaterEdges.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/",S[302535920000493--[[Change Map--]]]),
  ChoGGi.MenuFuncs.ChangeMap,
  nil,
  302535920000494--[[Change map (options to pick commander, sponsor, etc...

Attention: If you get yellow ground areas; just load it again.
The map disaster settings don't do jack (use ECM>Mission>Disasters).--]],
  "load_city.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/",S[3591--[[Autosave--]]]," ",S[302535920001201--[[Interval--]]]),
  ChoGGi.MenuFuncs.SetAutosavePeriod,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.AutosavePeriod,
      302535920001206--[[Change how many Sols between autosaving.--]]
    )
  end,
  "save_city.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/",S[302535920000265--[[Pulsating Pins--]]]),
  ChoGGi.MenuFuncs.PulsatingPins_Toggle,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.DisablePulsatingPinsMotion,
      302535920000335--[[Pins will no longer do the pulsating motion (hover over to stop).--]]
    )
  end,
  "JoinGame.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/",S[302535920000623--[[Change Terrain Type--]]]),
  ChoGGi.MenuFuncs.ChangeTerrainType,
  nil,
  302535920000624--[[Green or Icy mars? Coming right up!
(don't forget a light model)--]],
  "prefabs.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/",S[302535920000625--[[Change Light Model--]]]),
  ChoGGi.MenuFuncs.ChangeLightmodel,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.Lightmodel,
      302535920000626--[[Changes the lighting mode (temporary or permanent).--]]
    )
  end,
  "light_model.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/",S[302535920000627--[[Change Light Model Custom--]]]),
  ChoGGi.MenuFuncs.ChangeLightmodelCustom,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.LightmodelCustom,
      302535920000628--[["Make a custom lightmodel and save it to settings. You still need to use ""Change Light Model"" for permanent."--]]
    )
  end,
  "light_model.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/",S[302535920000629--[[UI Transparency--]]]),
  ChoGGi.MenuFuncs.SetTransparencyUI,
  ChoGGi.UserSettings.KeyBindings.SetTransparencyUI,
  302535920000630--[[Change the transparency of UI items (info panel, menu, pins).--]],
  "set_last_texture.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/",S[302535920000631--[[UI Transparency Mouseover--]]]),
  ChoGGi.MenuFuncs.TransparencyUI_Toggle,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.TransparencyToggle,
      302535920000632--[[Toggle removing transparency on mouseover.--]]
    )
  end,
  "set_last_texture.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/[2]",S[302535920000845--[[Render--]]],"/",S[302535920000633--[[Lights Radius--]]]),
  ChoGGi.MenuFuncs.SetLightsRadius,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.LightsRadius,
      302535920000634--[[Sets light radius (Menu>Options>Video>Lights), menu options max out at 100.
Lets you see lights from further away/more bleedout?--]]
    )
  end,
  "LightArea.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/[2]",S[302535920000845--[[Render--]]],"/",S[302535920000635--[[Terrain Detail--]]]),
  ChoGGi.MenuFuncs.SetTerrainDetail,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.TerrainDetail,
      302535920000636--[[Sets hr.TR_MaxChunks (Menu>Options>Video>Terrain), menu options max out at 200.
Makes the background terrain more detailed (make sure to also stick Terrain on Ultra in the options menu).--]]
    )
  end,
  "selslope.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/[2]",S[302535920000845--[[Render--]]],"/",S[302535920000637--[[Video Memory--]]]),
  ChoGGi.MenuFuncs.SetVideoMemory,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.VideoMemory,
      302535920000638--[[Sets hr.DTM_VideoMemory (Menu>Options>Video>Textures), menu options max out at 2048.--]]
    )
  end,
  "CountPointLights.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/[2]",S[302535920000845--[[Render--]]],"/",S[302535920000639--[[Shadow Map--]]]),
  ChoGGi.MenuFuncs.SetShadowmapSize,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.ShadowmapSize,
      302535920000640--[[Sets the shadow map size (Menu>Options>Video>Shadows), menu options max out at 4096.--]]
    )
  end,
  "DisableEyeSpec.tga"
)

--------------------
AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/[2]",S[302535920000845--[[Render--]]],"/",S[302535920000641--[[Disable Texture Compression--]]]),
  ChoGGi.MenuFuncs.DisableTextureCompression_Toggle,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.DisableTextureCompression,
      302535920000642--[[Toggle texture compression (game defaults to on, seems to make a difference of 600MB vram).--]]
    )
  end,
  "ExportImageSequence.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/[2]",S[302535920000845--[[Render--]]],"/",S[302535920000643--[[Higher Render Distance--]]]),
  ChoGGi.MenuFuncs.HigherRenderDist_Toggle,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.HigherRenderDist,
      302535920000644--[[Renders model from further away.
Not noticeable unless using higher zoom.--]]
    )
  end,
  "CameraEditor.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/[2]",S[302535920000845--[[Render--]]],"/",S[302535920000645--[[Higher Shadow Distance--]]]),
  ChoGGi.MenuFuncs.HigherShadowDist_Toggle,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.HigherShadowDist,
      302535920000646--[[Renders shadows from further away.
Not noticeable unless using higher zoom.--]]
    )
  end,
  "toggle_post.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/[1]",S[302535920001058--[[Camera--]]],"/",S[302535920000647--[[Border Scrolling--]]]),
  ChoGGi.MenuFuncs.SetBorderScrolling,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.BorderScrollingToggle,
      302535920000648--[[Set size of activation for mouse border scrolling.--]]
    )
  end,
  "CameraToggle.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/[1]",S[302535920001058--[[Camera--]]],"/",S[302535920000649--[[Zoom Distance--]]]),
  ChoGGi.MenuFuncs.CameraZoom_Toggle,
  nil,
  function()
    return ChoGGi.ComFuncs.SettingState(
      ChoGGi.UserSettings.CameraZoomToggle,
      302535920000650--[[Further zoom distance.--]]
    )
  end,
  "MoveUpCamera.tga"
)

AddAction(
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/[1]",S[302535920001058--[[Camera--]]],"/",S[302535920000651--[[Toggle Free Camera--]]]),
  ChoGGi.MenuFuncs.CameraFree_Toggle,
  ChoGGi.UserSettings.KeyBindings.CameraFree_Toggle,
  302535920000652--[[I believe I can fly.--]],
  "NewCamera.tga"
)

AddAction(-- Toggle Follow Camera
  {"/[30]",S[283142739680--[[Game--]]],"/"},
  Concat("/[30]",S[283142739680--[[Game--]]],"/[1]",S[302535920001058--[[Camera--]]],"/",S[302535920000653--[[Toggle Follow Camera--]]]),
  ChoGGi.MenuFuncs.CameraFollow_Toggle,
  ChoGGi.UserSettings.KeyBindings.CameraFollow_Toggle,
  302535920000654--[[Select (or mouse over) an object to follow.--]],
  "Shot.tga"
)

AddAction(-- Toggle Cursor
--~   {"/[30]",S[283142739680--[[Game--]]],"/"},
--~   Concat("/[30]",S[283142739680--[[Game--]]],"/[1]",S[302535920001058--[[Camera--]]],"/",S[302535920000655--[[Toggle Cursor--]]]),

  S[302535920000655--[[Toggle Cursor--]]],
  S[283142739680--[[Game--]]],
  Concat(S[283142739680--[[Game--]]],".",S[302535920001058--[[Camera--]]]),

  ChoGGi.MenuFuncs.CursorVisible_Toggle,
  ChoGGi.UserSettings.KeyBindings.CursorVisible_Toggle,
  302535920000656--[[Toggle between moving camera and selecting objects.--]],
  "select_objects.tga"
)
