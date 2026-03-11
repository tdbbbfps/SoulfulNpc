extends CharacterBody2D
class_name Character

@export var body : Node2D
@export var facing_left : bool = false:
	set(value):
		facing_left = value
		if body:
			flip_body()

func _ready() -> void:
	flip_body()

func flip_body() -> void:
	body.scale.x = -1.0 if facing_left else 1.0
