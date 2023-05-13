extends CharacterBody2D


const SPEED = 30.0;
var x;
var y;


func _physics_process(delta):
	
	if Input.is_key_pressed(KEY_W):
		y-=SPEED;
		$AnimationPlayer.play("move_up");
	elif Input.is_key_pressed(KEY_S):
		y+=SPEED;
		$AnimationPlayer.play("move_down");
	elif Input.is_key_pressed(KEY_A):
		x-=SPEED;
		$AnimationPlayer.play("move_left");
	elif Input.is_key_pressed(KEY_D):
		x+=SPEED;
		$AnimationPlayer.play("move_right");
	elif Input.is_key_pressed(KEY_S) && Input.is_key_pressed(KEY_L):
		x-=SPEED;
		y+=SPEED;
		$AnimationPlayer.play("move_up_right");
	elif Input.is_key_pressed(KEY_S) && Input.is_key_pressed(KEY_D):
		x+=SPEED;
		y+=SPEED;
		$AnimationPlayer.play("move_down_right");
	elif Input.is_key_pressed(KEY_W) && Input.is_key_pressed(KEY_A):
		x-=SPEED;
		y-=SPEED;
		$AnimationPlayer.play("move_up_left");
	elif Input.is_key_pressed(KEY_W) && Input.is_key_pressed(KEY_D):
		x+=SPEED;
		y-=SPEED;
		$AnimationPlayer.play("move_down_left");
	elif Input.is_key_pressed(KEY_Z):
		
		$AnimationPlayer.play("zappa");
	elif Input.is_key_pressed(KEY_X):
		
		$AnimationPlayer.play("annaffia");
	elif Input.is_key_pressed(KEY_C):
		
		$AnimationPlayer.play("raccogli");
	else:
		$AnimationPlayer.play("idle");
	
	
	
	
