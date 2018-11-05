extends KinematicBody2D

var velocity = Vector2()

func _physics_process(delta):
	
	if Input.is_action_pressed("ui.right"):
		velocity.x = 30
	elif Input.is_action_pressed("ui.left"):
		velocity.x = -30
	else:
		velocity.x=0
	
	
	if Input.is_action_pressed("ui.up"):
		velocity.x = -30
	elif Input.is_action_pressed("ui.down"):
		velocity.x = 30
	else:
		velocity.x=0
	move_and_slide(velocity)