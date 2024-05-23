extends Button


func _on_pressed():
	for child in get_tree().get_nodes_in_group("static_text_block_draggable"):
		child.visible = !child.visible
