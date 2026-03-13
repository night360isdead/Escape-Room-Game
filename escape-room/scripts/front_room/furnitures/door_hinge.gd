extends Node3D



@onready var animation_player: AnimationPlayer = $AnimationPlayer
var open = false

func action():
	if not open:
		animation_player.play("opening")
		open = true
	elif open:
		animation_player.play("closing")
		open = false
