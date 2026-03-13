extends Camera3D









func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("interact2"):
		position = Vector3(0,1,0)
		rotation_degrees.x = 0


func _physics_process(delta: float) -> void:
	
	
	
	
	
	
	var mouse_pos = get_viewport().get_mouse_position()
	
	var from = project_ray_origin(mouse_pos)
	var to = from + project_ray_normal(mouse_pos)*100
	var space = get_world_3d().direct_space_state
	var query = PhysicsRayQueryParameters3D.create(from,to)
	var result = space.intersect_ray(query)
	
	if result:
		
		var object = result.collider
		
		if Input.is_action_just_pressed("interact"):
			if object.has_method("action"):
				object.action()
				print(object.name)
