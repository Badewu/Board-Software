extends Button




func _on_pressed():
	for child in get_tree().get_nodes_in_group("basic_text_block"):
		child.queue_free()
		
	for child in get_tree().get_nodes_in_group("block_controller"):
		child.queue_free()
