if mods["maraxsis"] then
	data:extend({
		{
			type = "recipe",
			category = "calcining",
			name = "pelagos-maraxsis-super-sealant-substance",
		    icon = "__pelagos__/graphics/sealant-super-sealant.png",
			enabled = false,
			allow_productivity = true,
			energy_required = 5,
			ingredients = {
				{ type = "item", name = "coconut-sealant", amount = 2 },
			},
			results = {
				{ type = "item", name = "maraxsis-super-sealant-substance", amount = 1 },
			},
			auto_recycle = false,
		},
	})
	local tech = data.raw.technology["maraxsis-project-seadragon"]
	if tech and tech.effects then
		table.insert(tech.effects, { type = "unlock-recipe", recipe = "pelagos-maraxsis-super-sealant-substance" })
	end
end
