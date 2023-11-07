extends VBoxContainer

var connected_block


func _on_block_text_text_changed(new_text):
	if !connected_block.get_children():
		connected_block.text = new_text
	else:
		connected_block.get_node("text").text = new_text


func _on_block_visibility_pressed():
	connected_block.visible = !connected_block.visible
