extends CharacterBody2D

const SPEED = 3000.0
const JUMP_VELOCITY = -400.0

@onready var animator : AnimationPlayer = $AnimationPlayer
@onready var sprite : Sprite2D = $Sprite2D

func _physics_process(delta: float) -> void:
	var move_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = move_direction * SPEED * delta
	
	if velocity != Vector2.ZERO:
		animator.play("walking")
	else:
		animator.play("idle")
	
	if velocity.x > 0:
		sprite.flip_h = false
	
	if  velocity.x < 0:
		sprite.flip_h = true
	
	move_and_slide()
