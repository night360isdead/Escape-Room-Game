extends Node3D

@onready var open_safe: AnimationPlayer = %open

@onready var inv : Inventory = preload("res://scenes/inventory/inventory.tres")

@onready var item_required : InvItem = preload("res://scenes/inventory/items/scissors.tres")

var open = false

func have_it():
	for i in range(12):
		if inv.items[i] == item_required:
			return true
		else:
			return false


func action():
	if not open and have_it():
		open_safe.play("opening")
		open = true
		
		inv.items[0] = null
		
	
	
	
	
	
	#elif open:
		#open_safe.play("closing")
		#open = false
