class_name CompCharacterMove
extends Node

# Handles Player Movement
@export var player : CharacterBody2D

@export var speed : float = 100;

func get_input() -> void:
	var input_direction = Input.get_vector("left", "right", "up", "down")
	player.velocity = input_direction * speed

func _physics_process(delta: float) -> void:
	get_input()
	player.move_and_slide()
