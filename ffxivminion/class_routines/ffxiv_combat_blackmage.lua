ffxiv_combat_blackmage = {}
ffxiv_combat_blackmage.range = 24
ffxiv_combat_blackmage.optionsPath = GetStartupPath()..[[\LuaMods\ffxivminion\class_routines\]].."ffxiv_combat_blackmage.info"
if (not FileExists(ffxiv_combat_blackmage.optionsPath)) then
	local defaults = {}
	defaults.settings = {
		gRestHP = 75,
		gRestMP = 0,
		gPotionHP = 50,
		gPotionMP = 0,
		gFleeHP = 20,
		gFleeMP = 0,
		gUseSprint = "1",
	}
	persistence.store(ffxiv_combat_blackmage.optionsPath,defaults)
end
local options, e = persistence.load(ffxiv_combat_blackmage.optionsPath)
if (options) then
	ffxiv_combat_blackmage.options = options
end