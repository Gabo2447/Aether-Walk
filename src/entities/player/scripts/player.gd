extends CharacterBody2D


@export_group("Player Settings")
@export var SPEED: float
@export var JUMP_VELOCITY: float

@export_group("Components")
@export var input_component: InputComponent
@export var gravity_component: GravityComponent
@export var jump_component: JumpComponent
@export var velocity_component: VelocityComponent
@export var animation_component: AnimationComponent

@export var Sprite: Sprite2D
@export var animation_player: AnimationPlayer

@export var coyote_timer = 0.15
var coyote_time = 0.0

func _ready() -> void:
	if !Sprite:
		Sprite = $Sprite2D

	animation_component.animation_player = animation_player
	gravity_component.gravity_scale = 0.75

func _physics_process(delta: float) -> void:
	var direction = input_component.direction

	velocity_component.move_to(direction, SPEED, self , Sprite)
	gravity_component.apply_gravity(delta, self )
	jump_component.apply_jump(self , JUMP_VELOCITY, coyote_timer, input_component)
	update_animation()
	move_and_slide()

func update_animation() -> void:
	# if velocity.y < 0:
	# 	animation_component.play_animation("jump")
	# elif velocity.y > 0:
	# 	animation_component.play_animation("fall")
	if velocity.x != 0:
		animation_component.play_animation("run")
	else:
		animation_component.play_animation("idle")