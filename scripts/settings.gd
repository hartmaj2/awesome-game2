extends Control
var prev = null


#func _ready() -> void:
	#visible = false
	 
func _input(event : InputEvent):
	if (event.is_action_pressed("settings")):
		visible = !visible
		get_tree().paused = !get_tree().paused



func _on_button_pressed() -> void:
	visible = false
	get_tree().paused = false
