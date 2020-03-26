extends KinematicBody2D

const GRAVITY= 20
const UP=Vector2(0,-1)
const SPEED=200
const JUMP_HEIGHT= -550

var motion=Vector2()

func _physics_process(delta):
	motion.y+=GRAVITY
	if Input.is_action_pressed("RIGHT"):
		motion.x=SPEED
		$Sprite.play("run")
		$Sprite.flip_h=false
	elif Input.is_action_pressed("LEFT"):
		motion.x= -SPEED
		$Sprite.play("run")
		$Sprite.flip_h=true
	else:
		motion.x=0
		$Sprite.play("idle")
	if is_on_floor():
		print("Voce esta no chao")
		if Input.is_action_pressed("UP"):
			motion.y= JUMP_HEIGHT
			$Sprite.play("jump")
			SPKEY
	else:
		print("Voce nao esta no chao")
		$Sprite.play("jump")
	motion=move_and_slide(motion,UP)
func _ready():
	pass