extends CharacterBody2D

@onready var coal_gun = preload("res://Items/coal_gun.tscn")

const player_base_stats = {
	"health": 5,
	"speed": 100,
	"power": 5,
	"luck": 5
}




func _ready() -> void:
	var t = get_viewport().size
	print(t)
	update_weapon()

func update_weapon() -> void:
	var weapon = coal_gun.instantiate()
	add_child(weapon)


func _on_child_entered_tree(node: Node) -> void:
	print(node.name)
