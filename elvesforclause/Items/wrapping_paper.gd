extends Area2D

var can_pickup : bool = false

var wrapping_paper : Dictionary = {
	"name": "wrapping_paper",
	"range_type": "short",
	"range": 3,
	"speed": 7,
	"attack_power": 5,
	"durability": 3
}

func _process(delta: float) -> void:
	if can_pickup:
		if Input.is_action_just_pressed("attack"):
			Global.short_range = "wrapping_paper"
			print("Pickup Weapon ", Global.short_range)
			queue_free()


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		can_pickup = true
		$Label.show()

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		can_pickup = false
		$Label.hide()
