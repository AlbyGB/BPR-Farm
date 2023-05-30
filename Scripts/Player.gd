extends CharacterBody2D


const SPEED = 30.0

var x
var y

@onready var animation = $AnimationPlayer
@export var mappa : TileMap

func _ready():
	pass

func _physics_process(delta):
	if Input.is_key_pressed(KEY_W):
		y -= SPEED
		animation.play("move_up")
		
	elif Input.is_key_pressed(KEY_S):
		y += SPEED
		animation.play("move_down")
		
	elif Input.is_key_pressed(KEY_A):
		x -= SPEED
		animation.play("move_left")
		
	elif Input.is_key_pressed(KEY_D):
		x += SPEED
		animation.play("move_right")
		
	elif Input.is_key_pressed(KEY_S) && Input.is_key_pressed(KEY_L):
		x -= SPEED
		y += SPEED
		animation.play("move_up_right");
		
	elif Input.is_key_pressed(KEY_S) && Input.is_key_pressed(KEY_D):
		x += SPEED
		y += SPEED
		animation.play("move_down_right");
		
	elif Input.is_key_pressed(KEY_W) && Input.is_key_pressed(KEY_A):
		x -= SPEED
		y -= SPEED
		animation.play("move_up_left");
		
	elif Input.is_key_pressed(KEY_W) && Input.is_key_pressed(KEY_D):
		x += SPEED
		y -= SPEED
		animation.play("move_down_left")
		
	elif Input.is_key_pressed(KEY_Z) && mappa.world_to_map(mappa.to_local(Vector2(x,y))) == "":
		animation.play("zappa")
		
	elif Input.is_key_pressed(KEY_X) && mappa.world_to_map(mappa.to_local(Vector2(x,y))) == "":
		animation.play("annaffia")
		
	elif Input.is_key_pressed(KEY_C) && mappa.world_to_map(mappa.to_local(Vector2(x,y))) == "":
		animation.play("raccogli")
		
	else:
		animation.play("idle")
	
	
	
	
