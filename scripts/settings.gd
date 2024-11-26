extends Control

var jakub = true
func _ready() -> void:
	$HSlider.value = GM.volume
func _input(event : InputEvent):
	if (event.is_action_pressed("settings")):
		print("esc")
		visible = !visible
		get_tree().paused = !get_tree().paused



func _on_button_pressed() -> void:
	visible = false
	get_tree().paused = false


func _on_h_slider_value_changed(value: float) -> void:
	GM.volume = value
