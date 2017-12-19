require("util")

script.on_init(function ()
	for _, force in pairs(game.forces) do
		if force.technologies["automated-rail-transportation"].researched then
			force.recipes["Waypoint-stations_station"].enabled = true
		end
	end
end)

--the trigger to do stuff
script.on_event(defines.events.on_train_changed_state, function (event)
	local trigger = event.train

	--Skip current staion if waypoint
	if trigger.state == defines.train_state.arrive_station and trigger.path_end_stop.name == "Waypoint-stations_station" then
		--only skip if there is something to skip to
		if #trigger.schedule.records > 1 then
			local new_schedule = table.deepcopy(trigger.schedule)

			if new_schedule.current == #new_schedule.records then
				new_schedule.current = 1
			else
				new_schedule.current = new_schedule.current + 1
			end

			trigger.schedule = new_schedule
		end
	end
end)
