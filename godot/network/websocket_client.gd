extends Node

var socket : WebSocketPeer = WebSocketPeer.new()
@export var websocket_url : String = "wss://echo.websocket.org"

func _ready() -> void:
	var err = socket.connect_to_url(websocket_url)
	print("Connecting to %s" %websocket_url)
	if err == OK:
		print("Connect successfully!")
		await get_tree().create_timer(1.5).timeout
		print("> Sending test packet.")
		socket.send_text("Text packet.")
	else:
		print("Connect failed!")
