extends StaticBody3D

@onready var open_up: AnimationPlayer = %open_up

var open = false

func action():
	if not open:
		open_up.play("opening")
		open = true
	elif open:
		open_up.play("closing")
		open = false
