extends Control

var board = "res://board/board.tscn"
var board_ui = "res://board/board_ui.tscn"

#OWN VARIABLES
@onready var menu_ui = get_node("mode_list/menu_UI")
@onready var menu_popup = get_node("mode_list/menu_popup")



func _on_adjektive_endungen_pressed():
	if get_parent():
		get_parent().load_board(board, board_ui)
		menu_popup.visible = true
		menu_ui.visible = false




func _on_menu_popup_pressed():
	menu_ui.visible = true
	menu_popup.visible = false
