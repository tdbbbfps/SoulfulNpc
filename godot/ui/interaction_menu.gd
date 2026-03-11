extends CanvasLayer

@export var menu : Control

func open_menu() -> void:
	menu.show()

func close_menu() -> void:
	menu.hide()
