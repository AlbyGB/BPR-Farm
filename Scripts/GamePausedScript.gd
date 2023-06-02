extends Control

@onready var button = $VBoxContainer/Button2

var is_paused = false

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused

func _on_button_2_pressed():
	is_paused = false
