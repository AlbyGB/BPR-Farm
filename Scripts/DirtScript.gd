extends Area2D

@export var dirts_container: Node2D
@export var is_inside: bool = false

signal zaz
signal zaz2

func _process(delta):
	pass

func _on_body_entered(body):
	is_inside = true

func _on_player_semina():
	if is_inside:
		print("ciao")
		$Plant.visible = true
		emit_signal("zaz")


func _on_body_exited(body):
	is_inside = false


func _on_player_raccolta():
	if is_inside:
		emit_signal("zaz2")
