extends CharacterBody2D

@export var gravity = 200.0
@export var walk_speed = 200
@export var jump_speed = -150
@export var can_double_jump = false

var was_in_air = false

@onready var walk_sprite = $Walk
@onready var jump_sprite = $Jump
@onready var idle_sprite = $Idle
@onready var fall_sprite = $Fall
@onready var double_jump_sprite = $DoubleJump
@onready var hit_sprite = $Hit
@onready var _animation_player = $AnimationPlayer

func _physics_process(delta):
	velocity.y += delta * gravity

	var speed = walk_speed

	if Input.is_action_pressed("left"):
		velocity.x = -speed
		flip_sprites(true)
		if is_on_floor():
			set_sprite_visibility("walk")
			_animation_player.play("walk")

	elif Input.is_action_pressed("right"):
		velocity.x = speed
		flip_sprites(false)
		if is_on_floor():
			set_sprite_visibility("walk")
			_animation_player.play("walk")

	else:
		velocity.x = 0
		if is_on_floor() and not was_in_air:
			set_sprite_visibility("idle")
			_animation_player.play("idle")

	if is_on_floor():
		was_in_air = false
		can_double_jump = true

		if Input.is_action_just_pressed('up'):
			velocity.y = jump_speed
			set_sprite_visibility("jump")
			_animation_player.play("jump")
			was_in_air = true

	else:
		if velocity.y < 0:
			set_sprite_visibility("jump")
			_animation_player.play("jump")
		elif velocity.y > 0:
			set_sprite_visibility("fall")
			_animation_player.play("fall")

		if can_double_jump and Input.is_action_just_pressed('up'):
			velocity.y = jump_speed
			can_double_jump = false
			set_sprite_visibility("double_jump")
			_animation_player.play("double_jump")

	if Input.is_action_just_pressed("fire"):
		set_sprite_visibility("hit")
		_animation_player.play("hit")

	move_and_slide()

func set_sprite_visibility(state: String):
	walk_sprite.visible = false
	jump_sprite.visible = false
	idle_sprite.visible = false
	fall_sprite.visible = false
	double_jump_sprite.visible = false
	hit_sprite.visible = false

	match state:
		"idle":
			idle_sprite.visible = true
		"walk":
			walk_sprite.visible = true
		"jump":
			jump_sprite.visible = true
		"fall":
			fall_sprite.visible = true
		"double_jump":
			double_jump_sprite.visible = true
		"hit":
			hit_sprite.visible = true

func flip_sprites(is_left: bool):
	walk_sprite.flip_h = is_left
	jump_sprite.flip_h = is_left
	idle_sprite.flip_h = is_left
	fall_sprite.flip_h = is_left
	double_jump_sprite.flip_h = is_left
	hit_sprite.flip_h = is_left
