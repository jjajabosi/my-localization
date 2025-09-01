if mods["canal-excavator"] then
	-- add pelagos excavatable ground
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

	-- allow productivity
	if not data.raw["mining-drill"]["canex-excavator"] then
		data:extend({
			{
				type = "mining-drill",
				name = "canex-excavator",
				allowed_effects = { "consumption", "speed", "pollution", "productivity" },
			},
		})
	end
end
