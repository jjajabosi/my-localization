local flameturret = data.raw["fluid-turret"]["flamethrower-turret"]
for _, fluid in pairs(data.raw.fluid) do
	local fuel_value = fluid.fuel_value
	if type(fuel_value) == "string" then
		local number_part = util.parse_energy(fuel_value) / 1000000 -- MJ

		local found = false
		for _, f in pairs(flameturret.attack_parameters.fluids) do
			if f.type == fluid.name then
				f.damage_modifier = number_part
				found = true
				break
			end
		end
		if not found then
			if number_part and number_part > 0 then
				table.insert(flameturret.attack_parameters.fluids, {
					type = fluid.name,
					damage_modifier = number_part,
				})
			end
		end
	end
end
