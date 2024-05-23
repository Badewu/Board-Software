extends Control
#TEMPLATE FOR UI RIGHT
@onready var block_controller = load("res://ui_basic_blocks/block_controller.tres.gd")

#UI ELEMENTS UI LEFT
@onready var add_text = load("res://ui_basic_blocks/add_text.tscn")
@onready var add_text_prefix = load("res://ui_basic_blocks/add_text_prefix.tscn")
@onready var add_text_suffix = load("res://ui_basic_blocks/add_text_suffix.tscn")
@onready var add_draggable = load("res://ui_basic_blocks/add_draggable.tscn")
@onready var font_settings = load("res://ui_basic_blocks/font_settings.tscn")
@onready var show_draggables = load("res://ui_basic_blocks/show_draggables.tscn")
@onready var clear_board = load("res://ui_basic_blocks/clear_board.tscn")

#CLASS INFORMATION
var metadata = []

func initiate_ui(ui_elements : Array):
	var new_ui_elements = []
	print(ui_elements)
	for element in ui_elements:
		match element:
			"add_text":
				var new_label = Label.new()
				new_label.text = "Add Text"
				
				new_ui_elements.append(new_label)
				new_ui_elements.append(add_text.instantiate())
			
			"font_settings":
				var new_label = Label.new()
				new_label.text = "Font Settings"
				
				new_ui_elements.append(new_label)
				new_ui_elements.append(font_settings.instantiate())
			
			"add_text_prefix":
				var new_label = Label.new()
				new_label.text = "Add Text with Prefix"
				
				new_ui_elements.append(new_label)
				new_ui_elements.append(add_text_prefix.instantiate())
			
			"add_text_suffix":
				var new_label = Label.new()
				new_label.text = "Add Text with Suffix"
				
				new_ui_elements.append(new_label)
				new_ui_elements.append(add_text_suffix.instantiate())
			
			"add_draggable":
				var new_label = Label.new()
				new_label.text = "Add Draggable"
				
				new_ui_elements.append(new_label)
				new_ui_elements.append(add_draggable.instantiate())
			
			"show_draggable":
				var new_label = Label.new()
				new_label.text = "Show Draggable"
				
				new_ui_elements.append(new_label)
				new_ui_elements.append(show_draggables.instantiate())
			
			"clear_board":
				var new_label = Label.new()
				new_label.text = "Clear Board"
				
				new_ui_elements.append(new_label)
				new_ui_elements.append(clear_board.instantiate())
	
	for element in new_ui_elements:
		get_node("left_ui").add_child(element)
		
	for element in ui_elements:
		metadata.append(element)
	
	print("METADATA ARE:" + str(metadata))

func _on_exit_to_menu_pressed():
	get_tree().quit()
