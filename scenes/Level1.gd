extends Node2D

@onready var anim_player = $AnimationPlayer

func _on_area_trigger_body_entered(body: Node2D) -> void:
	if body.name == "PinkPlayer":
		anim_player.play("fade_out")
		await anim_player.animation_finished
		call_deferred("change_scene")

func change_scene():
	get_tree().change_scene_to_file(str("res://scenes/Level2.tscn"))
