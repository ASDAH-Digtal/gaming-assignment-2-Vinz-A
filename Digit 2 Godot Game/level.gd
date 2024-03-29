extends Node2D



signal toogle_game_paused(is_paused : bool)

var game_paused : bool = false:
	get:
		return game_paused
	set(value):
			game_paused = value
			get_tree().paused = !game_paused
			emit_signal("toogle_game_paused", game_paused)

func _input(event : InputEvent):
	if(event.is_action_pressed("ui_cancel")):
		var current_value : bool = get_tree().paused
		game_paused = !game_paused





func _on_exit_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://menu.tscn")



func _on_next_level_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://level_2.tscn")
