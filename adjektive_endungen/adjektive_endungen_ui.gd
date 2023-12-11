extends Control

@onready var basic_text_block = load("res://basic_blocks/basic_text_block.tscn")
@onready var basic_text_block_suffix = load("res://basic_blocks/basic_text_block_suffix.tscn")
@onready var static_text_block_draggable = load("res://basic_blocks/static_text_block_draggable.tscn")
@onready var block_controller = load("res://ui_basic_blocks/block_controller.tres.gd")

func _process(delta):
	pass


func _on_create_text_pressed():
	var text_content = $left_ui/add_text/text.text
	var new_text_block = basic_text_block.instantiate()
	
	new_text_block.get_node("text").text = text_content
	
	get_parent().get_node("board").get_node("board").add_element(new_text_block)
	get_node("left_ui/font_settings").set_font_size()
	get_node("right_ui_scroll").get_node("right_ui").update_block_list()
	
	$left_ui/add_text/text.clear()


func _on_create_adjective_pressed():
	var text_content = $left_ui/add_adjective/text.text
	var new_text_block_suffix = basic_text_block_suffix.instantiate()
	
	new_text_block_suffix.get_node("text").text = text_content
	
	get_parent().get_node("board").get_node("board").add_element(new_text_block_suffix)
	get_node("left_ui/font_settings").set_font_size()
	get_node("right_ui_scroll").get_node("right_ui").update_block_list()
	
	$left_ui/add_adjective/text.clear()


func _on_create_draggable_pressed():
	var text_content = $left_ui/add_draggable/text.text
	var new_static_text_block_draggable = static_text_block_draggable.instantiate()
	
	new_static_text_block_draggable.text = text_content
	
	get_parent().get_node("board").get_node("board").add_draggable(new_static_text_block_draggable)
	get_node("left_ui/font_settings").set_font_size()
	get_node("right_ui_scroll").get_node("right_ui").update_block_list()
	
	$left_ui/add_draggable/text.clear()


func _on_show_draggables_pressed():
	for child in get_tree().get_nodes_in_group("static_text_block_draggable"):
		child.visible = !child.visible


func _on_clear_board_pressed():
	for child in get_tree().get_nodes_in_group("basic_text_block"):
		child.queue_free()
		
	for child in get_tree().get_nodes_in_group("block_controller"):
		child.queue_free()


func _on_spawn_template_pressed():
	var planned_cards = [
		"herbstlich",
		"glücklich",
		"gefährlich",
		"schrecklich",
		"farbig",
		"salzig",
		"steinig",
		"eisig",
		"teuer"
	]
	var planned_cards_invisible = [
		"Der Herbst",
		"Das Glück",
		"Die Gefahr",
		"Der Schreck",
		"Die Farbe",
		"Das Salz",
		"Der Stein",
		"Das Eis"
	]
	for card in planned_cards:
		var text_content = card
		var new_text_block = basic_text_block.instantiate()
		
		new_text_block.text = text_content
		
		get_parent().get_node("board").get_node("board").add_element(new_text_block)
		get_node("left_ui/font_settings").set_font_size()
		get_node("right_ui_scroll").get_node("right_ui").update_block_list()
	
	for card_invisible in planned_cards_invisible:
		var text_content = card_invisible
		var new_text_block = basic_text_block.instantiate()
		
		new_text_block.text = text_content
		new_text_block.visible = false
		
		get_parent().get_node("board").get_node("board").add_element(new_text_block)
		get_node("left_ui/font_settings").set_font_size()
		get_node("right_ui_scroll").get_node("right_ui").update_block_list()
