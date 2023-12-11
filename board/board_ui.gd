extends Control

#USED BLOCKS ON BOARD
@onready var basic_text_block = load("res://basic_blocks/basic_text_block.tscn")
@onready var basic_text_block_suffix = load("res://basic_blocks/basic_text_block_suffix.tscn")
@onready var static_text_block_draggable = load("res://basic_blocks/static_text_block_draggable.tscn")

#TEMPLATE FOR UI RIGHT
@onready var block_controller = load("res://ui_basic_blocks/block_controller.tres.gd")

#UI ELEMENTS UI LEFT
@onready var add_text = load("res://ui_basic_blocks/add_text.tscn")
@onready var add_text_prefix = load("res://ui_basic_blocks/add_text.tscn")
@onready var add_text_text_suffix = load("res://ui_basic_blocks/add_text.tscn")
@onready var add_draggable = load("res://ui_basic_blocks/add_text.tscn")
@onready var font_settings = load("res://ui_basic_blocks/add_text.tscn")


func initiate_ui():
	pass


func _on_show_draggables_pressed():
	for child in get_tree().get_nodes_in_group("static_text_block_draggable"):
		child.visible = !child.visible


func _on_clear_board_pressed():
	for child in get_tree().get_nodes_in_group("basic_text_block"):
		child.queue_free()
		
	for child in get_tree().get_nodes_in_group("block_controller"):
		child.queue_free()
