extends Node2D

@onready var board = get_tree().get_first_node_in_group("board")
var current_ui
var current_board

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func load_board(directory : String, directory_ui : String, board_content : Dictionary):
	var new_board = load(directory)
	var new_ui = load(directory_ui)
	
	new_board = new_board.instantiate()
	new_board.name = "board"
	
	new_ui = new_ui.instantiate()
	
	add_child(new_ui)
	new_ui.initiate_ui(board_content.get("ui_blocks"))
	current_ui = new_ui
	board.add_child(new_board)
	current_board = new_board
	current_board.instantiate_board(board_content.get("cards_on_board"))
	$SubViewportContainer/SubViewport.world_2d = board.world_2d

