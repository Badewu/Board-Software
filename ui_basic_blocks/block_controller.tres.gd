extends PanelContainer

var connected_block
var custom_font_size : bool = false
@onready var block_text = get_node("VBoxContainer/block_head/block_text")


func _on_block_text_text_changed(new_text):
	if !connected_block.get_children():
		connected_block.text = new_text
	else:
		connected_block.get_node("text").text = new_text


func _on_block_visibility_pressed():
	connected_block.visible = !connected_block.visible


func _on_italic_pressed():
	pass # Replace with function body.


func _on_bold_pressed():
	pass # Replace with function body.


func _on_underlined_pressed():
	pass # Replace with function body.


func _on_block_delete_pressed():
	connected_block.queue_free()
	queue_free()
