require("util")

local waypoint = table.deepcopy(data.raw.recipe["train-stop"])
waypoint.name = "Waypoint-stations_station"
waypoint.result = "Waypoint-stations_station"

data:extend({waypoint})