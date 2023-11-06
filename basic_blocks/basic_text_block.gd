extends Button

var dragged : bool = false

func _process(delta):
	if dragged:
		position = get_global_mouse_position() - size / 2
		


func _on_button_down():
	dragged = true


func _on_button_up():
	dragged = false
