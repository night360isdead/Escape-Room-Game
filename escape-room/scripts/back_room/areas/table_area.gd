extends StaticBody3D


@onready var camera_3d: Camera3D = %Camera3D





func action():
	camera_3d.position = Vector3(0,1.6,-2)
	camera_3d.rotation_degrees.x = -45
	
