extends StaticBody3D

@onready var down_open: AnimationPlayer = %down_open


var open = false

func action():
	if not open:
		down_open.play("opening")
		open = true
	elif open:
		down_open.play("closing")
		open = false
