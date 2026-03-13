extends Area2D

var speed = 100
var direction = Vector2.ZERO

func _ready() -> void:
	await get_tree().create_timer(1.0).timeout
	queue_free()

func _physics_process(delta: float) -> void:
	position += direction * speed * delta
