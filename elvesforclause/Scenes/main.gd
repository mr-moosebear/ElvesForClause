extends Node2D


func _on_child_exiting_tree(node: Node) -> void:
	if node.is_in_group("present"):
		var t = Global.pick_random_item(Global.present)
		print(t)
