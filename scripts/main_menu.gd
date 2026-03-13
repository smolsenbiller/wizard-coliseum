extends Control

@export var port_number : int = 42069
var peer = ENetMultiplayerPeer.new()

func _on_host_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/host_screen.tscn")


func _on_join_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/client_screen.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
