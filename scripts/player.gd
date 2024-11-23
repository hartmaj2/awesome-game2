extends CharacterBody2D


const SPEED = 300.0
var dir = Vector2.ZERO
var moving = false
var shooting = false

func _physics_process(delta: float) -> void:
	dir = Vector2(Input.get_action_strength("right")-Input.get_action_strength("left"),
	Input.get_action_strength("down")-Input.get_action_strength("up"))
	shooting = Input.is_action_just_pressed("shoot")
	var zero = Vector2.ZERO
	move_and_slide()
