extends State

func enter() -> void:
	super()
	anisprite.play("run")
	can_transition = true

func exit() -> void:
	super()
	can_transition = false
	anisprite.stop()


func _physics_process(delta: float) -> void:
	if actor.velocity.x == 0.0:
		fsm.change_state("idle")
	if actor.velocity.y < 0.0:
		fsm.change_state("jump")
	if actor.velocity.y > 0.0:
		fsm.change_state("fall")
