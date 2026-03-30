extends Node2D
class_name GravityComponent

# var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var gravity_scale: float = 1.0

func apply_gravity(delta: float, player: CharacterBody2D) -> void:
	if not player.is_on_floor():
		player.velocity += player.get_gravity() * delta * gravity_scale
		print("Applying gravity: ", player.velocity)