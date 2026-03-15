extends StaticBody3D


@onready var pickup: AnimationPlayer = %pickup

@onready var inv : Inventory = preload("res://scenes/inventory/inventory.tres")


@export var pickup_item : InvItem

func action():
	pickup.play("pickup")
	
	inv.items[0] = pickup_item
	
	
