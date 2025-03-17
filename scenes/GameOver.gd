extends ColorRect

func _on_link_button_pressed() -> void:
	get_tree().change_scene_to_file(str("res://scenes/MainMenu.tscn"))
