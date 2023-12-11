extends TextEdit

@onready var basic_text_block = load("res://basic_blocks/basic_text_block.tscn")

func _gui_input(event):
	if event is InputEventKey:
		if event.keycode == KEY_ENTER and event.pressed:
			create_text(text)
		if event.keycode == KEY_ENTER and event.is_released():
			clear()


func create_text(new_text):
	var new_text_block = basic_text_block.instantiate()
	
	new_text_block.get_node("text").text = new_text
	
	get_tree().get_first_node_in_group("board").get_node("board").add_element(new_text_block)
	get_tree().get_first_node_in_group("font_settings").set_font_size()
	get_tree().get_first_node_in_group("right_ui").update_block_list()
	
	clear()


func _on_create_text_pressed():
	create_text(text)
