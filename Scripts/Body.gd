extends KinematicBody2D

const GRAVITY=20

var motion=Vector2()

func _ready():
	pass

func _physics_process(delta):
	motion.y+=GRAVITY
	if Input.is_action_pressed("UP"):
		print("UP pressed")
	elif Input.is_action_pressed("DOWN"):
		print("DOWN Pressed")
		