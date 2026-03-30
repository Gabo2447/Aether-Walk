extends CharacterBody2D


@export_group("Player Settings")
@export var SPEED: float
@export var JUMP_VELOCITY: float

@export_group("Components")
@export var input_component: InputComponent
@export var gravity_component: GravityComponent
@export var jump_component: JumpComponent
@export var velocity_component: VelocityComponent

@export var Sprite: Sprite2D

@export var coyote_timer = 0.15
var coyote_time = 0.0

func _ready() -> void:
	if !Sprite:
		Sprite = $Sprite2D
	gravity_component.gravity_scale = 0.75

func _physics_process(delta: float) -> void:
	var direction = input_component.direction

	velocity_component.move_to(direction, SPEED, self , Sprite)
	gravity_component.apply_gravity(delta, self )
	jump_component.apply_jump(self , JUMP_VELOCITY, coyote_timer, input_component)

	move_and_slide()
