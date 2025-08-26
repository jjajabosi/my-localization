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
	local t = data.raw["technology"]["oversea-energy-distribution"]
	t.prerequisites = { "pelagos-science-pack" }
	t.effects = {
		{ type = "unlock-recipe", recipe = "floating-electric-pole" },
	}

	t.unit = {
		count = 500,
		ingredients = {
			{ "automation-science-pack", 1 },
			{ "logistic-science-pack", 1 },
			{ "chemical-science-pack", 1 },
			{ "space-science-pack", 1 },
			{ "pelagos-science-pack", 1 },
		},
		time = 30,
	}
end

if mods["cargo-ships"] then
	local t = data.raw["technology"]["tank_ship"]
	t.prerequisites = { "pelagos-science-pack" }
	t.unit = {
		count = 1000,
		ingredients = {
			{ "automation-science-pack", 1 },
			{ "logistic-science-pack", 1 },
			{ "chemical-science-pack", 1 },
			{ "space-science-pack", 1 },
			{ "pelagos-science-pack", 1 },
		},
		time = 30,
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

if mods["cargo-ships"] then
	if data.raw["recipe"]["floating-electric-pole"] then
		data.raw["recipe"]["floating-electric-pole"].ingredients = {
			{ type = "item", name = "iron-plate", amount = 5 },
			{ type = "item", name = "big-electric-pole", amount = 20 },
			{ type = "item", name = "barrel", amount = 4 },
			{ type = "item", name = "coconut-sealant", amount = 4 },
		}
	end

	if data.raw["recipe"]["boat"] then
		data.raw["recipe"]["boat"].ingredients = {
			{ type = "item", name = "steel-plate", amount = 40 },
			{ type = "item", name = "engine-unit", amount = 15 },
			{ type = "item", name = "electronic-circuit", amount = 6 },
			{ type = "item", name = "coconut-sealant", amount = 30 },
		}
	end

	if data.raw["recipe"]["cargo_ship"] then
		data.raw["recipe"]["cargo_ship"].ingredients = {
			{ type = "item", name = "steel-plate", amount = 220 },
			{ type = "item", name = "engine-unit", amount = 50 },
			{ type = "item", name = "electronic-circuit", amount = 20 },
			{ type = "item", name = "coconut-sealant", amount = 80 },
		}
	end

	if data.raw["recipe"]["oil_tanker"] then
		data.raw["recipe"]["oil_tanker"].ingredients = {
			{ type = "item", name = "steel-plate", amount = 180 },
			{ type = "item", name = "engine-unit", amount = 50 },
			{ type = "item", name = "electronic-circuit", amount = 20 },
			{ type = "item", name = "coconut-sealant", amount = 80 },
			{ type = "item", name = "storage-tank", amount = 6 },
		}
	end

	if data.raw["recipe"]["buoy"] then
		data.raw["recipe"]["buoy"].ingredients = {
			{ type = "item", name = "iron-plate", amount = 5 },
			{ type = "item", name = "barrel", amount = 2 },
			{ type = "item", name = "coconut-sealant", amount = 2 },
			{ type = "item", name = "electronic-circuit", amount = 2 },
		}
	end
	if data.raw["recipe"]["chain_buoy"] then
		data.raw["recipe"]["chain_buoy"].ingredients = {
			{ type = "item", name = "iron-plate", amount = 5 },
			{ type = "item", name = "barrel", amount = 2 },
			{ type = "item", name = "coconut-sealant", amount = 2 },
			{ type = "item", name = "electronic-circuit", amount = 2 },
		}
	end

	if data.raw["recipe"]["oil_rig"] then
		data.raw["recipe"]["oil_rig"].ingredients = {
			{ type = "item", name = "steel-plate", amount = 200 },
			{ type = "item", name = "electronic-circuit", amount = 50 },
			{ type = "item", name = "pipe", amount = 100 },
			{ type = "item", name = "steam-engine", amount = 1 },
			{ type = "item", name = "pumpjack", amount = 5 },
			{ type = "item", name = "coconut-sealant", amount = 300 },
		}
	end
end
