extends Control

@onready var enter_name : LineEdit = $EnterName

func _on_host_pressed() -> void:
	Lobby.create_game()
	get_tree().change_scene_to_file("res://scenes/host_screen.tscn")


func _on_join_pressed() -> void:
	Lobby.join_game()
	get_tree().change_scene_to_file("res://scenes/client_screen.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_enter_name_text_submitted(new_text: String) -> void:
	Lobby.player_info[name] = enter_name.text
