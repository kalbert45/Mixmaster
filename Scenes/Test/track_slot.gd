extends Control

var beat_type = Constants.BEAT_TYPES.NONE : set = _set_beat

func _set_beat(value):
	beat_type = value
	match beat_type:
		Constants.BEAT_TYPES.NONE:
			$Slot.self_modulate = Color("#3d3d3d")
		Constants.BEAT_TYPES.KICK:
			$Slot.self_modulate = Color("#2a2f4e")
		Constants.BEAT_TYPES.SNARE:
			$Slot.self_modulate = Color("#c64524")


func _on_slot_gui_input(event):
	if event.is_action_pressed("lmb"):
		if Global.selected_track_beat != Constants.BEAT_TYPES.NONE:
			self.beat_type = Global.selected_track_beat
	elif event.is_action_pressed("rmb"):
		self.beat_type = Constants.BEAT_TYPES.NONE
