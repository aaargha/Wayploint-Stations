require("util")

local waypoint = table.deepcopy(data.raw["train-stop"]["train-stop"])
waypoint.name = "Waypoint-stations_station"
waypoint.minable = {mining_time = 1, result = "Waypoint-stations_station"}

data:extend({waypoint})