extends Control

var items : Dictionary = {
	"wrapping_paper": "res://Art/MyArt/WrappingPaper.png",
	"coal_gun": "res://Art/grenade_launcher.png"
}

func update_short_range() -> void:
	if Global.short_range:
		$ShortRangeSlot/Sprite2D.texture = load(items[Global.short_range])

func update_long_range() -> void:
	if Global.long_range:
		print(Global.long_range)
		$LongRangeSlot/Sprite2D.texture = load(items[Global.long_range])
