extends Node2D


func _on_child_exiting_tree(node: Node) -> void:
	if node.is_in_group("short_range"):
		print("Short Range Updating")
		$PlayerOne/InventoryUI.update_short_range()
	elif node.is_in_group("long_range"):
		print("Long Range Updating")
		$PlayerOne/InventoryUI.update_long_range()
