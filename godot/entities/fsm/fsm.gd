extends Node
class_name FSM

@export var initial_state : State
var current_state : State
var states : Dictionary[String, State]

func _ready() -> void:
	for state in get_children():
		if state is State:
			states[state.name.to_lower()] = state
			state.fsm = self
	current_state = initial_state
	current_state.enter()

## Change current state to new state.
## @new_state : New state's name.
## @force_to_chage : If true, ignore current state's can_transition. Forcing to change.
func change_state(new_state : String, force_to_chage : bool = false) -> void:
	if current_state.name.to_lower() == new_state:
		return
	if not current_state.can_transition and not force_to_chage:
		return
	current_state.exit()
	current_state = states[new_state]
	current_state.enter()
