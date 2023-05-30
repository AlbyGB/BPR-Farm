extends Control

@onready var button = $Button

func _process(delta):
	if button.button_pressed:
		get_tree().change_scene_to_file("res://Scenes/Menu.tscn")
