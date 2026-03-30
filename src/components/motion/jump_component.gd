extends Node2D
class_name JumpComponent

var max_jumps: int = 2

func apply_jump(player: CharacterBody2D, jump_velocity: float, coyote_timer: float, input_buffer: InputComponent) -> void:
	if input_buffer.consume_action("jump") and (player.is_on_floor() or player.coyote_time < coyote_timer or max_jumps > 0):
		execute_jump(player, jump_velocity, coyote_timer)
		max_jumps -= 1
	elif player.is_on_floor():
		max_jumps = 2

func execute_jump(player: CharacterBody2D, jump_velocity: float, coyote_timer: float) -> void:
	player.velocity.y = 0
	player.velocity.y = jump_velocity
	player.coyote_time = coyote_timer