extends Area2D

@export var sceneName: String = ""

func _ready():
	sceneName = get_tree().get_current_scene().get_name()
		
func _on_Lose_body_entered(body: Node2D):
	if body.get_name() == "PinkPlayer":
		global.lives -=1
		if (global.lives == 0):
			call_deferred("lose_screen")
		else:
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + sceneName + ".tscn")))
	
func lose_screen():
	get_tree().change_scene_to_file("res://scenes/GameOver.tscn")
