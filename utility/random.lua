function setup_random()
	math.randomseed(os.time())
	math.random()
	math.random()
	math.random()
end

function random_donut(min, max)
	local value = math.random(math.abs(min), math.abs(max))
	local invert = math.random()
	if invert < 0.5 then
		value = value * -1
	end
	return value
end