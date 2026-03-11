extends Node
class_name MovementComponent

@export var actor : CharacterBody2D
@export var body : Node2D

func _physics_process(delta: float) -> void:
	apply_gravity(delta)

func move(dir : float, delta : float) -> void:
	if dir:
		actor.velocity.x = dir * actor.speed
		body.scale.x = dir
	else:
		actor.velocity.x = 0.0

func jump() -> void:
	actor.velocity.y = actor.jump_velocity

func jumpcut() -> void:
	actor.velocity.y *= 0.5

func apply_gravity(delta : float) -> void:
	if not actor.is_on_floor():
		actor.velocity.y += actor.get_gravity().y * delta

func toggle_dropdown(toggle_on : bool) -> void:
	actor.set_collision_mask_value(5, toggle_on)
