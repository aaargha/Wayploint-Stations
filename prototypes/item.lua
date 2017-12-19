require("util")

local waypoint = table.deepcopy(data.raw.item["train-stop"])
waypoint.name = "Waypoint-stations_station"
waypoint.place_result = "Waypoint-stations_station"
waypoint.order = "z-a"

data:extend({waypoint})