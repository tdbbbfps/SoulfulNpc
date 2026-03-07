extends CharacterBody2D

@export var speed : float = 100.0
@export var jump_velocity : float = -250.0
@export var fsm : FSM

func _physics_process(delta: float) -> void:
	print(velocity)
	move_and_slide()
