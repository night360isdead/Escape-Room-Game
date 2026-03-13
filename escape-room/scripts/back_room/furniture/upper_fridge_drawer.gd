extends StaticBody3D

@onready var up_open: AnimationPlayer = %up_open



var open = false

func action():
	if not open:
		up_open.play("opening")
		open = true
	elif open:
		up_open.play("closing")
		open = false
