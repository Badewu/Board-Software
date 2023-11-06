extends Control

#LIST OF PROGRAMMS
var adjektive_endungen = "res://adjektive_endungen/adjektive_endungen.tscn"
var adjektive_endungen_ui = "res://adjektive_endungen/adjektive_endungen_ui.tscn"

#OWN VARIABLES
@onready var menu_ui = get_node("mode_list/menu_UI")
@onready var menu_popup = get_node("mode_list/menu_popup")

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_adjektive_endungen_pressed():
	if get_parent():
		get_parent().load_board(adjektive_endungen, adjektive_endungen_ui)
		menu_popup.visible = true
		menu_ui.visible = false




func _on_menu_popup_pressed():
	menu_ui.visible = true
	menu_popup.visible = false
