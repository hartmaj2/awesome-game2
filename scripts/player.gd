extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var dir = Vector2.ZERO


func _physics_process(delta: float) -> void:
	dir = Vector2(Input.get_action_strength("right")-Input.get_action_strength("left"),
	Input.get_action_strength("down")-Input.get_action_strength("up"))

	move_and_slide()
