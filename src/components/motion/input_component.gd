extends Node2D
class_name InputComponent

var input_buffer: Array = []
var buffer_time: float = 0.15 # ~0.15 seconds buffer time

var direction: float = 0.0

# --- FUNCIONES ---
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		add_to_buffer("jump")
	
	if event.is_action_pressed("attack"):
		add_to_buffer("attack")


func _physics_process(delta: float) -> void:
	direction = Input.get_axis("left", "right")

	for i in range(input_buffer.size() - 1, -1, -1):
		input_buffer[i].time -= delta
		if input_buffer[i].time < 0:
			input_buffer.remove_at(i)

# --- AUXILIARES ---
func add_to_buffer(action_name: String) -> void:
	input_buffer.append({"action": action_name, "time": buffer_time})

func has_buffered_action(action_name: String) -> bool:
	for item in input_buffer:
		if item["action"] == action_name:
			return true
	return false

func consume_action(action_name: String) -> bool:
	for i in range(input_buffer.size()):
		if input_buffer[i]["action"] == action_name:
			input_buffer.remove_at(i)
			return true
	return false