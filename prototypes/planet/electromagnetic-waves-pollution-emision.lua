local function add_em_to_electric(proto)
	if proto.energy_source and proto.energy_source.type == "electric" and proto.energy_usage then
		local value = util.parse_energy(proto.energy_usage) / 1000 -- w kW
		if value > 0 then
			proto.energy_source.emissions_per_minute = proto.energy_source.emissions_per_minute or {}
			proto.energy_source.emissions_per_minute["electromagnetic_waves"] = value
		end
	end
end

local function add_em_to_generator(proto)
	if proto.type == "generator" and proto.fluid_box then
		local fluid = data.raw.fluid[proto.fluid_box.filter]
		if fluid and fluid.heat_capacity then
			local heat = util.parse_energy(fluid.heat_capacity) -- J/°C
			local energy_per_unit = (proto.maximum_temperature - (proto.min_temperature or 15)) * heat
			local power = proto.fluid_usage_per_tick * 60 * energy_per_unit * (proto.effectivity or 1)
			local value = power / 1e6 -- MW
			if value > 0 then
				proto.energy_source.emissions_per_minute = proto.energy_source.emissions_per_minute or {}
				proto.energy_source.emissions_per_minute["electromagnetic_waves"] = value
			end
		end
	elseif proto.type == "reactor" and proto.consumption then
		local value = util.parse_energy(proto.consumption) / 1000 -- kW
		if value > 0 then
			proto.energy_source.emissions_per_minute = proto.energy_source.emissions_per_minute or {}
			proto.energy_source.emissions_per_minute["electromagnetic_waves"] = value
		end
	elseif proto.type == "fusion-reactor" and proto.power_input then
		local value = util.parse_energy(proto.power_input) / 100 -- w kW
		if value > 0 then
			proto.energy_source.emissions_per_minute = proto.energy_source.emissions_per_minute or {}
			proto.energy_source.emissions_per_minute["electromagnetic_waves"] = value
		end
	end
end

for _, protos in pairs(data.raw) do
	for _, proto in pairs(protos) do
		add_em_to_electric(proto)
		add_em_to_generator(proto)
	end
end
