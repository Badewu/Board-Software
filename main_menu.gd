extends Control

var board = "res://board/board.tscn"
var board_ui = "res://board/board_ui.tscn"
var level_data


#OWN VARIABLES
@onready var menu_ui = get_node("mode_list/menu_UI")
@onready var menu_popup = get_node("mode_list/menu_popup")

#func _ready():
	#test_level.cards_on_board = $Testblocks.get_children()

func _create_custom_board():
	if get_parent():
		get_parent().load_board(board, board_ui, level_data)
		#menu_popup.visible = true
		menu_ui.visible = false




func _on_menu_popup_pressed():
	menu_ui.visible = true
	#menu_popup.visible = false


func _on_file_dialog_file_selected(path):
	var file = FileAccess.open(path, FileAccess.READ)
	level_data = file.get_var(true)
	file = null
	
	print(level_data)
	_create_custom_board()
