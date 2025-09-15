local utils = require("__any-planet-start__.utils")

-- agricultural tower by się przydał
-- spoilage into nutrients
utils.set_prerequisites("agriculture", { "steel-processing", "landfill" })
utils.set_prerequisites("jellynut", { "planet-discovery-gleba" })
utils.set_prerequisites("yumako", { "planet-discovery-gleba" })
utils.set_prerequisites("landfill", { "automation-science-pack" })
utils.set_prerequisites("oil-processing", { "deep_sea_oil_extraction" })
utils.set_trigger("oil-processing", { type = "mine-entity", entity = "methane" })
utils.set_packs("landfill", { "automation-science-pack" }, 25, 30)
utils.add_prerequisites("chemical-science-pack", { "pelagos-science-pack" })
utils.add_prerequisites("pelagos-science-pack", { "plastics" })
utils.remove_recipes("pelagos-science-pack", { "pelagos-biolubricant", "pelagos-processing-unit", "pelagos-battery" })
utils.add_recipes("lubricant", { "pelagos-biolubricant" })
utils.add_recipes("processing-unit", { "pelagos-processing-unit" })
utils.add_recipes("battery", { "pelagos-battery" })

--utils.set
