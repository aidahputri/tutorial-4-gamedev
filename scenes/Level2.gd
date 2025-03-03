extends Node2D

@export var sceneName: String = "WinScreen"

@onready var flag1 = $AreaTrigger/Sprite2D
@onready var flag2 = $AreaTrigger2/Sprite2D

@onready var area1 = $AreaTrigger
@onready var area2 = $AreaTrigger2

var area1_entered = false
var area2_entered = false

func _on_AreaTrigger1_body_entered(body):
	if body.name == "PinkPlayer":
		area1_entered = true
		flag1.hide()
		check_win_condition()

func _on_AreaTrigger2_body_entered(body):
	if body.name == "PinkPlayer":
		area2_entered = true
		flag2.hide()
		check_win_condition()

func check_win_condition():
	if area1_entered and area2_entered:
		print("🎉 You Win!")
		call_deferred("win_scene")
		
func win_scene():
	get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
