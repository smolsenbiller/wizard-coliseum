extends Control

@export var port_number : int = 42069
var peer = ENetMultiplayerPeer.new()

func _on_host_pressed() -> void:
	pass


func _on_join_pressed() -> void:
	pass


func _on_quit_pressed() -> void:
	get_tree().quit()
