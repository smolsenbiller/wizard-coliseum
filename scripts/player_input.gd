extends MultiplayerSynchronizer




func _process(delta: float) -> void:
	var move_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	var mouse_location = $"..".get_global_mouse_position()
	var character_look_direction = $"..".get_local_mouse_position()
	
