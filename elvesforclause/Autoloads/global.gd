extends Node


var player_stats : Dictionary

var short_range : String
var long_range : String
var present : String

const weapons = ["coal_gun", "wrapping_paper"]
const power_ups = ["egg_nog", "hot_chocolate"]
const power_downs = ["coal", "reindeer_poop"]

func pick_random_item(str: String) -> String:
	match str: # str = present
		"power_down":
			return power_downs.pick_random()
		"power_up":
			return power_ups.pick_random()
		"weapon":
			return weapons.pick_random()
		_:
			return ""
