extends TextEdit

@onready var static_text_block_draggable = load("res://basic_blocks/static_text_block_draggable.tscn")

func _gui_input(event):
	if event is InputEventKey:
		if event.keycode == KEY_ENTER and event.pressed:
			create_text(text)
		if event.keycode == KEY_ENTER and event.is_released():
			clear()


func create_text(new_text):
	var new_static_text_block_draggable = static_text_block_draggable.instantiate()
	
	new_static_text_block_draggable.text = new_text
	
	get_tree().get_first_node_in_group("board").get_node("board").add_draggable(new_static_text_block_draggable)
	get_tree().get_first_node_in_group("font_settings").set_font_size()
	get_tree().get_first_node_in_group("right_ui").update_block_list()
	
	clear()


func _on_create_draggable_pressed():
	create_text(text)
