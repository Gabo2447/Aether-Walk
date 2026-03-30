extends Node2D
class_name JumpComponent

func apply_jump(player: CharacterBody2D, jump_velocity: float, coyote_timer: float, input_buffer: InputComponent) -> void:
	if input_buffer.consume_action("jump"):
		execute_jump(player, jump_velocity, coyote_timer)

func execute_jump(player: CharacterBody2D, jump_velocity: float, coyote_timer: float) -> void:
	player.velocity.y = 0
	player.velocity.y = jump_velocity
	player.coyote_time = coyote_timer