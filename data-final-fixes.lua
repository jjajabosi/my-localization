-- reenables fishing settings disabled by cargo ships
if settings.startup["pelagos-allow-fishing"].value then
	for _, inserter in pairs(data.raw.inserter) do
		inserter.use_easter_egg = true
	end
else
	for _, inserter in pairs(data.raw.inserter) do
		inserter.use_easter_egg = false
	end
end

-- make sure plants can grow on sand-1
require("prototypes.plants-autoplace-settings")
