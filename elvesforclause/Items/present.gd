extends Node2D

var can_pickup : bool = false 
var gift : Array = ["weapon", "power_up", "power_down"]


func _process(delta: float) -> void:
	if can_pickup:
		if Input.is_action_just_pressed("attack"):
			Global.present = random_gift(gift)
			queue_free()

# TODO: Create a way that if an item hasn't been picked after 3x pick that
func random_gift(arr: Array) -> String:
	var str = arr.pick_random()
	return str


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		can_pickup = true
		$Label.show()

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		can_pickup = false
		$Label.hide()
