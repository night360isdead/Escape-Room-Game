extends StaticBody3D

@onready var open_right: AnimationPlayer = %open_right

var open = false

func action():
	if not open:
		open_right.play("opening")
		open = true
	elif open:
		open_right.play("closing")
		open = false
