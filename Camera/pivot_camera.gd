extends Node3D

@export var camera: Camera3D
@export var sensitivity: float = 0.01
@export var cam_speed: float = 5.0
@export var distance_limit: float = 1000.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("scroll_down"):
		camera.position.z += delta * cam_speed * camera.position.z
		clamp_camera()
	elif Input.is_action_just_pressed("scroll_up"):
		camera.position.z -= delta * cam_speed * camera.position.z
		clamp_camera()

func clamp_camera() -> void:
	camera.position.z = clamp(camera.position.z, .01, distance_limit)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		if Input.is_action_pressed("mouse_left"):
			rotation.x -= event.screen_relative.y * sensitivity
			rotation.y -= event.screen_relative.x * sensitivity
			
			rotation.x = clamp(rotation.x, -PI * 0.5, PI * 0.5)
