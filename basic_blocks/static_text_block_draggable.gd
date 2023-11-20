extends Button

var  custom_font_size : bool = false


func _get_drag_data(at_position):
	set_drag_preview(self.duplicate())
	return text
