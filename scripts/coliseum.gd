extends Node2D

func _ready():
	Lobby.player_loaded.rpc_id(1) # Tell the server that this peer has loaded.

func start_game():
	pass
