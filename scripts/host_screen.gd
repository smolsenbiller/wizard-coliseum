extends Control


func _on_start_pressed() -> void:
	Lobby.load_game.rpc("res://scenes/coliseum.tscn")


func _on_back_pressed() -> void:
	multiplayer.multiplayer_peer = OfflineMultiplayerPeer.new()
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
