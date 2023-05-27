extends Node2D

@onready var playButton = $MenuButtonsContainer/Button
@onready var optionsButton = $MenuButtonsContainer/Button2
@onready var exitButton = $MenuButtonsContainer/Button3

func _process(delta):
	if exitButton.button_pressed:
		get_tree().quit()
		
	if playButton.button_pressed:
		get_tree().change_scene_to_file("Scenes/MainGame.tscn")

	if optionsButton.button_pressed:
		get_tree().change_scene_to_file("Scenes/Options.tscn")
