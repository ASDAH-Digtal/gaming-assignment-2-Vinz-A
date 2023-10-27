extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://level.tscn")
	

func _on_quit_pressed():
	get_tree().quit()


func _on_controls_pressed():
	get_tree().change_scene_to_file("res://control_menu.tscn")


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://credits_.tscn")
