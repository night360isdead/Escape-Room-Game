extends StaticBody3D

@onready var left_open: AnimationPlayer = %left_open

var open = false

func action():
	if not open:
		left_open.play("opening")
		open = true
	elif open:
		left_open.play("closing")
		open = false
