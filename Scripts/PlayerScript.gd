extends CharacterBody2D

@export var moveSpeed: float = 50
@export var startingDirection: Vector2 = Vector2(0, 1)
@export var waterPerc: float = 1

#@onready var player_animation = $AnimationPlayer
@onready var animationTree = $AnimationTree
@onready var stateMachine = animationTree.get("parameters/playback")

func _ready():
	update_animation_parameters(startingDirection)

func _physics_process(delta):
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	update_animation_parameters(input_direction)
	velocity = input_direction * moveSpeed
	
	
	move_and_slide()
	
	set_new_state()

func update_animation_parameters(move_input: Vector2):
	if move_input != Vector2.ZERO:
		animationTree.set("parameters/walk/blend_position", move_input)
		animationTree.set("parameters/idle/blend_position", move_input)

func set_new_state():
	if velocity != Vector2.ZERO:
		stateMachine.travel("walk")
	else:
		stateMachine.travel("idle")
