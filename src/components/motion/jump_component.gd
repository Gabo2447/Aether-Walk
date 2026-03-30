extends Node2D
class_name JumpComponent

@export var total_allowed_jumps: int = 2
var jumps_available: int = 0

func apply_jump(player: CharacterBody2D, jump_velocity: float, coyote_timer: float, input_buffer: InputComponent) -> void:
	if player.is_on_floor():
		jumps_available = total_allowed_jumps
	
	if not player.is_on_floor() and player.coyote_time > coyote_timer and jumps_available == total_allowed_jumps:
		jumps_available = total_allowed_jumps - 1
	
	if input_buffer.consume_action("jump"):
		if jumps_available > 0:
			execute_jump(player, jump_velocity)
			jumps_available -= 1

func execute_jump(player: CharacterBody2D, jump_velocity: float) -> void:
	player.velocity.y = 0
	player.velocity.y = jump_velocity
	player.coyote_time = 999