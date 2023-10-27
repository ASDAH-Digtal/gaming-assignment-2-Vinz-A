extends Area2D

func collect():
	queue_free()




func _on_body_entered(body):
	queue_free()
