extends StaticBody3D

@onready var right_open: AnimationPlayer = %right_open

var open = false

func action():
	if not open:
		right_open.play("opening")
		open = true
	elif open:
		right_open.play("closing")
		open = false
