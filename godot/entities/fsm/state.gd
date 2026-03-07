extends Node
class_name State

@export var actor : CharacterBody2D
@export var anisprite : AnimatedSprite2D
var fsm : FSM
var can_transition : bool = false

func _ready() -> void:
	set_physics_process(false)

func enter() -> void:
	set_physics_process(true)
	
func exit() -> void:
	set_physics_process(false)
	
func _physics_process(delta: float) -> void:
	pass
