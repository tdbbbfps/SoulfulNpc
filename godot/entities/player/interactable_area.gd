extends Area2D
class_name InteractableArea
## Area to detect interactable character or object. If interactable character or object enter the area, add them into a list.
##TODO: 透過current_index來指定互動目標，確保一次只會跟一個物件互動到。玩家透過按鍵切換，互動選單隨之移動到目標身上。
var current_interactable : Array[Node2D]
var current_index : int = 0:
	set(value):
		current_index = clamp(value, 0, current_interactable.size() - 1)

func can_interact() -> bool:
	return current_interactable.size() > 0

func _on_body_entered(body: Node2D) -> void:
	if body is Character and not body in current_interactable:
		current_interactable.append(body)

func _on_body_exited(body: Node2D) -> void:
	if body is Character and body in current_interactable:
		current_interactable.erase(body)
