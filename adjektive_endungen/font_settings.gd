extends HBoxContainer


func _on_increase_pressed():
	for child in get_tree().get_nodes_in_group("basic_text_block"):
		if !child.get_children():
			var current_font_size = child.get_theme_font_size("font_size")
			current_font_size += 5
			child.add_theme_font_size_override("font_size", current_font_size)
		else:
			for subchild in child.get_children():
				var current_font_size = subchild.get_theme_font_size("font_size")
				current_font_size += 5
				subchild.add_theme_font_size_override("font_size", current_font_size)


func _on_decrease_pressed():
	for child in get_tree().get_nodes_in_group("basic_text_block"):
		var current_font_size = child.get_theme_font_size("font_size")
		current_font_size -= 5
		child.add_theme_font_size_override("font_size", current_font_size)
