extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.






func _on_level_2_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://level_3.tscn")


func _on_exit_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://menu.tscn")
