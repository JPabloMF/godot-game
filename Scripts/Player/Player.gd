extends KinematicBody2D

var motion = Vector2()
var gravity = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	motion.y += gravity
	if Input.is_action_pressed("ui_left"):
		motion.x = -200
	elif Input.is_action_pressed("ui_right"):
		motion.x = 200
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = -400
	
	motion = move_and_slide(motion,Vector2.UP)
