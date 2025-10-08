extends Node

var pck_found: bool

func _init() -> void:
	pck_found = ProjectSettings.load_resource_pack("res://custom_scene.pck")
