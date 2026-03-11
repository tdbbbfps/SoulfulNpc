extends Node

@export var actor : CharacterBody2D
@export var movement_component : MovementComponent

func _physics_process(delta: float) -> void:
	var dir : float = Input.get_axis("left", "right")
	movement_component.move(dir, delta)

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("jump") and actor.is_on_floor():
		movement_component.jump()
	if Input.is_action_just_released("jump") and actor.velocity.y < -50.0:
		movement_component.jumpcut()
	if Input.is_action_just_pressed("drop_down"):
		movement_component.toggle_dropdown(false)
	if Input.is_action_just_released("drop_down"):
		movement_component.toggle_dropdown(true)
