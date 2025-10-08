extends Node3D

@export var camera_pivot: Node3D
@export var scene_parent: Node3D
@export var placeholder_scene: PackedScene

func _ready() -> void:
	if Autoload.pck_found:
		var scene: PackedScene = load("res://custom_scene.tscn")
		if scene:
			scene_parent.add_child(scene.instantiate())
			set_camera_limit()
			return
	scene_parent.add_child(placeholder_scene.instantiate())

## The camera limit is calculated by the scene packer and attached to the scene root
func set_camera_limit() -> void:
	var scene_root = scene_parent.get_child(0)
	camera_pivot.distance_limit = scene_root.get_meta("max_camera_distance", 1000)
