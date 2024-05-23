extends Button


func _on_file_dialog_file_selected(path):
	var savefile = {}
	
	var ui_blocks = get_tree().get_nodes_in_group("board_ui")
	for ui_block in ui_blocks:
		for child in ui_block.get_children():
			child.set_owner(ui_block)
	savefile.ui_blocks = ui_blocks
	
	var elements = get_tree().get_nodes_in_group("basic_text_block")
	for element in elements:
		for child in element.get_children():
			child.set_owner(element)
	
	savefile.cards_on_board = elements
	
	var file = FileAccess.open(path, FileAccess.WRITE)
	file.store_var(savefile, true)
	file = null


func _on_pressed():
	get_node("FileDialog").show()
