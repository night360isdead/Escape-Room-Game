extends StaticBody3D

@onready var open_left: AnimationPlayer = %open_left




var open = false

func action():
	if not open:
		open_left.play("opening")
		open = true
	elif open:
		open_left.play("closing")
		open = false
