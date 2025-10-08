@tool
extends Node3D

@export_tool_button("debug_draw_axies") var dda = draw_axies
@export var debug_draw: DebugDraw

func _ready() -> void:
	draw_axies()

func draw_axies() -> void:
	debug_draw.draw_line(Vector3(-10000, 0, 0), Vector3(10000, 0, 0), Color("#fa3e68"))
	debug_draw.draw_line(Vector3(0, -10000, 0), Vector3(0, 10000, 0), Color("#aaea03"))
	debug_draw.draw_line(Vector3(0, 0, -10000), Vector3(0, 0, 10000), Color("#31affa"))
	
	
	
