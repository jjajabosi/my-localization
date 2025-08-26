if settings.startup["pelagos-allow-fishing"].value then
	for _, inserter in pairs(data.raw.inserter) do
		inserter.use_easter_egg = true
	end
else
	for _, inserter in pairs(data.raw.inserter) do
		inserter.use_easter_egg = false
	end
end
