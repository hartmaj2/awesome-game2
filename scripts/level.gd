extends Node2D
func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("settings")):
		print("esc")
		#Settings.visible = true
