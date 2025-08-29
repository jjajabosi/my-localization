if mods["cargo-ships"] then
	local t = data.raw["technology"]["automated_water_transport"]
	t.prerequisites = { "coconut-processing-technology" }
	t.effects = {
		{ type = "unlock-recipe", recipe = "boat" },
		{ type = "unlock-recipe", recipe = "port" },
		{ type = "unlock-recipe", recipe = "buoy" },
		{ type = "unlock-recipe", recipe = "chain_buoy" },
		{ type = "unlock-recipe", recipe = "cargo_ship" },
	}
	t.unit = nil
	t.research_trigger = {
		type = "craft-item",
		item = "coconut-sealant",
	}
end

if mods["cargo-ships"] then
	local t = data.raw["technology"]["deep_sea_oil_extraction"]
	t.prerequisites = { "automated_water_transport" }
	t.effects = {
		{ type = "unlock-recipe", recipe = "oil_rig" },
	}
	t.unit = nil
	t.research_trigger = {
		type = "build-entity",
		entity = "cargo_ship",
	}
end

if mods["cargo-ships"] then
	data.raw["technology"]["cargo_ships"] = nil
end

if mods["cargo-ships"] then
	data.raw["technology"]["water_transport"] = nil
end

if mods["cargo-ships"] then
	data.raw["technology"]["automated_bridges"] = nil
end

local generator = data.raw["generator"]["or_power_electric"]

if generator and generator.fluid_box then
	generator.fluid_box.filter = nil
end
