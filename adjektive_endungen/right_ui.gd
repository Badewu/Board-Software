extends VBoxContainer

@onready var block_controller = load("res://ui_basic_blocks/block_controller.tscn")

func update_block_list():
	for child in get_children():
		child.queue_free()
	
	for node in get_tree().get_nodes_in_group("basic_text_block"):
		var new_block_controller = block_controller.instantiate()
		
		if !node.get_children():
			new_block_controller.get_node("VBoxContainer").get_node("block_head")\
			.get_node("block_text").text = node.text
		else:
			new_block_controller.get_node("VBoxContainer").get_node("block_head")\
			.get_node("block_text").text = node.get_node("text").text
		add_child(new_block_controller)
		new_block_controller.connected_block = node
