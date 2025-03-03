extends Area2D

func _on_Death_Area_body_entered(body: Node2D):
	if body.name == "PinkPlayer":
		print("Reset level...")
		call_deferred("reset_level")

func reset_level():
	get_tree().reload_current_scene()
