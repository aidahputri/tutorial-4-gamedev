extends Area2D

func _on_Lose_body_entered(body):
	if body.name == "PinkPlayer":
		print("Reset level...")
		call_deferred("reset_level")

func reset_level():
	get_tree().reload_current_scene()
