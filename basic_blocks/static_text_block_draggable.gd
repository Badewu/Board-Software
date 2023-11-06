extends Button


func _get_drag_data(at_position):
	set_drag_preview(self.duplicate())
	return text
