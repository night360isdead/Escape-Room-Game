extends Control


@onready var inv : Inventory = preload("res://scenes/inventory/inventory.tres")
@onready var slots : Array = $Panel/HBoxContainer.get_children()





func _ready() -> void:
	update_slots()


#updating the ui when picking up items
func _input(event: InputEvent) -> void:
	update_slots()


func update_slots():
	for i in range(12):
		slots[i].update(inv.items[i])
