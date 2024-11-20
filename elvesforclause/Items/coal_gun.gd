extends Node2D

const stats : Dictionary = {
	"power": 5,
	"range": 5,
	"durability": 5,
	"mag_size": 5
}


var can_pickup : bool = false
func _process(delta: float) -> void:
	if can_pickup:
		if Input.is_action_just_pressed("attack"):
			Global.long_range = "coal_gun"
			queue_free()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		can_pickup = true
		print("Pick Up Gun")


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		can_pickup = false
