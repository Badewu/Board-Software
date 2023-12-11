extends HBoxContainer

var hovered : bool = false
var dragging : bool = false
var custom_font_size : bool = false


func _process(delta):
	if dragging:
		position = get_global_mouse_position()
		position -= size / 2


func _can_drop_data(at_position, data):
	#print("DETECTING")
	return typeof(data) == TYPE_STRING


func _drop_data(at_position, data):
	$drop_box.show()
	$drop_box.text = data


func _on_mouse_entered():
	hovered = true


func _on_mouse_exited():
	hovered = false


func _on_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			dragging = true
		if event.button_index == MOUSE_BUTTON_LEFT and !event.pressed:
			dragging = false
