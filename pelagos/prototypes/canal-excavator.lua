if mods["canal-excavator"] then
	data:extend({
		{
			type = "mod-data",
			name = "canex-pelagos-config",
			data_type = "canex-planet-config",
			data = {
				mineResult = "stone",
				oreStartingAmount = 20,
				tint = { r = 205, g = 133, b = 63 },
				isDefault = false,
			},
		},
	})

	if data.raw["recipe"]["canex-excavator"] then
		data.raw["recipe"]["canex-excavator"].ingredients = {
			{ type = "item", name = "steel-plate", amount = 10 },
			{ type = "item", name = "iron-plate", amount = 15 },
			{ type = "item", name = "iron-gear-wheel", amount = 20 },
			{ type = "item", name = "electronic-circuit", amount = 5 },
			{ type = "item", name = "coconut-sealant", amount = 10 },
		}
		data.raw["recipe"]["canex-excavator"].energy_required = 10
	end

	if data.raw["recipe"]["canex-digable"] then
		data.raw["recipe"]["canex-digable"].ingredients = {
			{ type = "item", name = "spoilage", amount = 5 },
			{ type = "fluid", name = "water", amount = 25 },
		}
	end

	if not data.raw["mining-drill"]["canex-excavator"] then
		data:extend({
			{
				type = "mining-drill",
				name = "canex-excavator",
				allowed_effects = { "consumption", "speed", "pollution", "productivity" },
			},
		})
	end

	local t = data.raw["technology"]["canex-excavator"]
	t.prerequisites = { "planet-discovery-pelagos" }
	t.effects = {
		{ type = "unlock-recipe", recipe = "canex-excavator" },
		{ type = "unlock-recipe", recipe = "canex-digable" },
	}

	t.research_trigger = {
		type = "mine-entity",
		entity = "pelagos-big-rock",
	}
	t.order = "ea[pelagos]"
	t.unit = nil
end
