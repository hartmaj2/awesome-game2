extends CharacterBody2D


const SPEED = 300.0
var dir = Vector2.ZERO
var moving = false
var shooting = false
var sound_end = false
var audio = null

func _ready() -> void:
	audio = $PlayerSounds

func _physics_process(delta: float) -> void:
	if (GM.volume != audio.volume_db):
		audio.volume_db = GM.volume
		print(audio.volume_db)
	dir = Vector2(Input.get_action_strength("right")-Input.get_action_strength("left"),
	Input.get_action_strength("down")-Input.get_action_strength("up"))
	shooting = Input.is_action_just_pressed("shoot")
	var zero = (Vector2.ZERO == dir)
	if (zero and moving):
		moving = false
		audio.stop()
	elif (!zero and !moving):
		moving=true
		audio.play()
	elif (!zero and sound_end):
		audio.play()
		sound_end = false
	position += SPEED*delta*dir
	move_and_slide()


func _on_player_sounds_finished() -> void:
	sound_end = true
