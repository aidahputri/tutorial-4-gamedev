extends ColorRect

func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file(str("res://scenes/Level1.tscn"))

func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file(str("res://scenes/Level2.tscn"))
