extends Character
class_name Player

@export var speed : float = 100.0
@export var jump_velocity : float = -250.0
@export var fsm : FSM

func _physics_process(delta: float) -> void:
	move_and_slide()


func _on_interactable_area_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
