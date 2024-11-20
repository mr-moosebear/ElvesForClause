extends CharacterBody2D


func _ready() -> void:
	if !Global.short_range:
		print("Hello")


func _physics_process(delta: float) -> void:
	pass
