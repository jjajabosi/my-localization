-- work in progress
data:extend({
	{
		type = "tips-and-tricks-item-category",
		name = "space-age",
		order = "k-[space-age]",
	},
	{
		type = "tips-and-tricks-item",
		name = "pelagos-briefing-main",
		tag = "[planet=pelagos]",
		category = "space-age",
		order = "a-pelagos-main",
		indent = 0,
		trigger = {
			type = "research",
			technology = "planet-discovery-pelagos",
		},
		skip_trigger = {
			type = "change-surface",
			surface = "pelagos",
		},
		simulation = {
			init_update_count = 10,
			generate_map = false,
			checkboard = false,
			mute_wind_sounds = true,
			init = [[
                local surface = game.surfaces[1]

                game.simulation.camera_position = {0,0}
                game.simulation.camera_zoom = 1.0

                for x=-100,100 do
                    for y=-100,100 do
                        surface.set_tiles({{position={x,y}, name="water"}})
                    end
                end
                for x=-20,20 do
                    for y=-20,20 do
                        surface.set_tiles({{position={x,y}, name="sand-1"}})
                    end
                end

                surface.create_entity{name="pelagos-big-rock", position={0,0}, force="neutral"}

                
                surface.create_entity{name="coconut-palm-mature", position={6,0}, force="neutral"}
            ]],
			update = [[
            ]],
		},
	},
})
