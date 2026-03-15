extends StaticBody3D


@onready var open_middle: AnimationPlayer = %open_middle

var open = false

func action():
	if not open:
		open_middle.play("opening")
		open = true
	elif open:
		open_middle.play("closing")
		open = false
