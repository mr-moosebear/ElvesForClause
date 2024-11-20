extends CharacterBody2D


const player_base_stats = {
	"health": 5,
	"speed": 100,
	"power": 5,
	"luck": 5
}

func _ready() -> void:
	if !Global.short_range:
		print("Hello")


func _physics_process(delta: float) -> void:
	pass
