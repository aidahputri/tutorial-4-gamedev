extends Node2D

@onready var flag1 = $AreaTrigger/Sprite2D
@onready var flag2 = $AreaTrigger2/Sprite2D

@onready var area1 = $AreaTrigger
@onready var area2 = $AreaTrigger2

var area1_entered = false
var area2_entered = false

func _ready():
	area1.body_entered.connect(_on_area1_body_entered)
	area2.body_entered.connect(_on_area2_body_entered)

func _on_area1_body_entered(body):
	if body.name == "PinkPlayer":
		area1_entered = true
		check_win_condition()

func _on_area2_body_entered(body):
	if body.name == "PinkPlayer":
		area2_entered = true
		flag2.hide()
		check_win_condition()

func check_win_condition():
	if area1_entered and area2_entered:
		print("🎉 You Win!")
