extends RigidBody2D

@export var sceneName = "LoseScreen"
@onready var banana_sprite = $Banana
@onready var animation_player = $AnimationPlayer

func _ready():
	animation_player.play("banana")
