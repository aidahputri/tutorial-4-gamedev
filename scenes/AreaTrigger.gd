extends Area2D

@export var sceneName: String = "Level2"
@onready var animation_player = $AnimationPlayer 

func _ready():
	animation_player.play("flag")

func _on_Area_Trigger_body_entered(body):
	if body.get_name() == "PinkPlayer":
		call_deferred("change_scene")
		
func change_scene():
	get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
