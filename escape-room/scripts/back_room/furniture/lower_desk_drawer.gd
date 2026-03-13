extends StaticBody3D

@onready var open_down: AnimationPlayer = %open_down

var open = false

func action():
	if not open:
		open_down.play("opening")
		open = true
	elif open:
		open_down.play("closing")
		open = false
