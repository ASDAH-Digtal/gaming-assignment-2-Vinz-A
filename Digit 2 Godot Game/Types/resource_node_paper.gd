extends StaticBody2D

class_name ResourceNode

@export var node_types : Array
@export var starting_resources : int = 1
@export var pickup_type : PackedScene

@onready var level_parent = get_parent()


var current_resources : int :
	set(value):
		if(value <= 0):
			queue_free()
			
func _ready():
	current_resources = starting_resources
	
func _harvest(amount : int):
	for n in amount:
		spawn_resource()
		
		
		current_resources -= amount
		
func spawn_resource():
	var pickup_instance : Pickup = pickup_type.instantiate() as Pickup
	level_parent.add_child(pickup_instance)
