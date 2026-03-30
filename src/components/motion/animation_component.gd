extends Node2D
class_name AnimationComponent

var animation_player: AnimationPlayer
var current_animation: String = ""

func _ready() -> void:
	if animation_player == null:
		print("AnimationPlayer not assigned to AnimationComponent.")

func play_animation(animation_name: String) -> void:
	if current_animation == animation_name:
		return
	
	if animation_player.has_animation(animation_name):
		animation_player.play(animation_name)
		current_animation = animation_name
	else:
		print("Animation not found: ", animation_name)

func stop_animation() -> void:
	if current_animation != "":
		animation_player.stop()
		current_animation = ""
