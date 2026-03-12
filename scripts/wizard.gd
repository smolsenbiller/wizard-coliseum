extends CharacterBody2D

const SPEED = 3000.0
const JUMP_VELOCITY = -400.0

@onready var animator : AnimationPlayer = $AnimationPlayer
@onready var sprite : Sprite2D = $Sprite2D
@onready var wand_sprite : Sprite2D = $Pivot/Wand
@onready var pivot : Node2D = $Pivot

var magic_shot_scene : PackedScene = preload("res://scenes/magic_shot.tscn")


func _physics_process(delta: float) -> void:
	var move_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = move_direction * SPEED * delta
	
	var mouse_location = get_global_mouse_position()
	var character_look_direction = get_local_mouse_position()
	
	pivot.look_at(mouse_location)
	
	#Animation
	if velocity != Vector2.ZERO:
		animator.play("walking")
	else:
		animator.play("idle")
	#Looking direction
	if character_look_direction.x > 0:
		sprite.flip_h = false
	if  character_look_direction.x < 0:
		sprite.flip_h = true
	
	if Input.is_action_just_pressed("shoot"):
		magic_blast()
	
	move_and_slide()

func magic_blast():
	var magic_shot = magic_shot_scene.instantiate()
	
	magic_shot.global_position = wand_sprite.global_position
	
	var target = get_global_mouse_position()
	var dir = (target - wand_sprite.global_position).normalized()
	magic_shot.direction = dir
	magic_shot.rotation = dir.angle()
	get_tree().root.add_child(magic_shot)
