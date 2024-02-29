extends Node


func _ready():
	SignalBus.select_beat.connect(_on_select_beat)

func _on_select_beat(beat_type):
	Global.selected_track_beat = beat_type

func _on_play_button_pressed():
	pass # Replace with function body.
