extends Node3D


var room = 1

@onready var right_shape: CollisionShape3D = $blocks/block_right_room/right_shape
@onready var left_shape: CollisionShape3D = $blocks/block_left_room/left_shape
@onready var back_shape: CollisionShape3D = $blocks/block_back_room/back_shape
@onready var front_shape: CollisionShape3D = $blocks/block_front_room/front_shape



func _ready() -> void:
	room_state()


##################################################################################################################333
#changing rooms 
func _input(event: InputEvent) -> void:
	
	if Input.is_action_just_pressed("left"):
		
		room -= 1
		if room < 1:
			room = 4
		print(room)
		room_state()
	
	if Input.is_action_just_pressed("right"):
		
		room += 1
		if room > 4:
			room = 1
		print(room)
		room_state()
		

func room_state():
	if room == 1:
		$rooms/FrontRoom/Camera3D.current = true
		right_shape.set_deferred("disabled",false)
		left_shape.set_deferred("disabled",false)
		front_shape.set_deferred("disabled",true)
		back_shape.set_deferred("disabled",false)
	elif room == 2:
		$rooms/RightRoom/Camera3D.current = true
		right_shape.set_deferred("disabled",true)
		left_shape.set_deferred("disabled",false)
		front_shape.set_deferred("disabled",false)
		back_shape.set_deferred("disabled",false)
	elif room == 3:
		$rooms/BackRoom/Camera3D.current = true
		right_shape.set_deferred("disabled",false)
		left_shape.set_deferred("disabled",false)
		front_shape.set_deferred("disabled",false)
		back_shape.set_deferred("disabled",true)
	elif room == 4:
		$rooms/LeftRoom/Camera3D.current = true
		right_shape.set_deferred("disabled",false)
		left_shape.set_deferred("disabled",true)
		front_shape.set_deferred("disabled",false)
		back_shape.set_deferred("disabled",false)
###################################################################################
