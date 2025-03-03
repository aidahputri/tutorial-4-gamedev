extends Area2D
@export var sceneName: String = "LoseScreen"

func _on_Death_Area_body_entered(body: Node2D):
	if body.name == "PinkPlayer":
		print("Reset level...")
		get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
		#call_deferred("reset_level")

func reset_level():
	get_tree().reload_current_scene()
