extends RigidBody2D

@onready var banana_sprite = $Banana
@onready var apple_sprite = $Apple
@onready var animation_player = $AnimationPlayer

func _ready():
	#animation_player.play("banana")
	if get_tree().current_scene.name == "Level1":
		animation_player.play("banana")
		apple_sprite.visible = false
			
	if get_tree().current_scene.name == "Level2":
		animation_player.play("apple")
		banana_sprite.visible =  false
