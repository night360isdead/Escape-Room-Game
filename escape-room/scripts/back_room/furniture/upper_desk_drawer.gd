extends StaticBody3D

@onready var open_up: AnimationPlayer = %open_up


@onready var inv : Inventory = preload("res://scenes/inventory/inventory.tres")

@onready var item_required : InvItem = preload("res://scenes/inventory/items/key_table_up_drawer.tres")


var open = false



func have_it():
	if inv.items[1] == item_required:
		return true
	else:
		return false




func action():
	if not open and have_it():
		open_up.play("opening")
		open = true
		inv.items[1] = null
		
		
