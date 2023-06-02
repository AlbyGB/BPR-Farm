extends Node2D

@onready var timer = $Timer
@onready var plant = $Sprite2D
var stage: int
var is_zaz = false

func _ready():
	plant.frame = 1

func _process(delta):
	if is_zaz:
		if timer.is_stopped():
			timer.start()
		match stage:
			1: plant.frame = 1
			2: plant.frame = 2
			3: plant.frame = 3
			4: plant.frame = 4
			5: plant.frame = 5

func _on_timer_timeout():
	if stage <= 5:
		stage += 1


func _on_dirt_zaz():
	is_zaz = true
	plant.visible = true


func _on_dirt_zaz_2():
	if plant.frame == 5:
		plant.frame = 1
		plant.visible = false
		timer.stop()
		Globals.inventory += 1
		is_zaz = false
		stage = 1
