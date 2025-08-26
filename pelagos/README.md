
if mods["planetaris-unbounded"] then
	table.insert(productivity_effects, {
		type = "change-recipe-productivity",
		recipe = "planetaris-sandstone-foundation",
		change = 0.1,
	})
end

table.insert(tech.effects, { type = "unlock-recipe", recipe = "pelagos-maraxsis-super-sealant-substance" })

# Planet Pelagos
Welcome to insular planet Pelagos.

![](Isolated.png "welcome image")


## Mods Integration
