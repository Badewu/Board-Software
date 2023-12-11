extends HBoxContainer

var font_size : int = 70

func _on_increase_pressed():
	var new_font_size := font_size + 5
	set_new_font_size(new_font_size)


func _on_decrease_pressed():
	var new_font_size := font_size - 5
	set_new_font_size(new_font_size)


func set_new_font_size(new_font_size : int):
	font_size = new_font_size
	for child in get_tree().get_nodes_in_group("basic_text_block"):
		if !child.get_children():
			child.add_theme_font_size_override("font_size", font_size)
		else:
			for subchild in child.get_children():
				subchild.add_theme_font_size_override("font_size", font_size)


func set_font_size():
	for child in get_tree().get_nodes_in_group("basic_text_block"):
		if !child.get_children():
			child.add_theme_font_size_override("font_size", font_size)
		else:
			for subchild in child.get_children():
				subchild.add_theme_font_size_override("font_size", font_size)
