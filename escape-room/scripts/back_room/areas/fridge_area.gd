extends StaticBody3D

@onready var camera_3d: Camera3D = %Camera3D





func action():
	camera_3d.position = Vector3(2.5,1,-1.5)
	
