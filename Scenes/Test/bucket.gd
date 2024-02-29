extends Node2D

@export var color = Color("#ffffff")
@export var beat_type = Constants.BEAT_TYPES.KICK


func _ready():
	$Sprite2D.modulate = color


func _on_control_gui_input(event):
	if event.is_action_pressed("lmb"):
		SignalBus.emit_signal("select_beat", beat_type)
