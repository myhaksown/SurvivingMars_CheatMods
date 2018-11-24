return PlaceObj("ModDef", {
	"title", "Fix: Rocket Stuck v0.6",
	"version", 6,
	"saved", 1542974400,
	"image", "Preview.png",
	"id", "ChoGGi_FixExpeditionRocketStuckUnloading",
	"steam_id", "1567028510",
	"author", "ChoGGi",
	"lua_revision", LuaRevision,
	"code", {
		"Code/Script.lua",
	},
	"description", [[This will check on load game for certain rockets stuck on the ground unable to do jack.
So far:
Unloading colonists.
Unloading colonist crew from expedition.
Maintenance */5.
Drones stuck inside.
Expedition launched rocket still "occupies" landing pad.

If this doesn't fix it for you, then I'll need a copy of your saved game.]],
})
