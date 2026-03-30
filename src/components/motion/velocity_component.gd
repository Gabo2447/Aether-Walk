extends Node2D
class_name VelocityComponent

func move_to(direction: float, speed: float, player: CharacterBody2D, sprite: Sprite2D) -> void:
	player.velocity.x = direction * speed
	sprite.flip_h = direction > 0
	player.move_and_slide()