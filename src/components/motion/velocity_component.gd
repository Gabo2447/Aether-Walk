extends Node2D
class_name VelocityComponent

func move_to(direction: float, speed: float, player: CharacterBody2D, sprite: Sprite2D) -> void:
	player.velocity.x = direction * speed
	
	if direction != 0:
		sprite.flip_h = direction > 0