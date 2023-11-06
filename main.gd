extends Node2D

@onready var board = get_node("board")
var current_ui
var current_board
#@onready var board_mirror = get_node("board_mirror")

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func load_board(directory : String, directory_ui : String):
	var new_board = load(directory)
	var new_ui = load(directory_ui)
	
	new_board = new_board.instantiate()
	new_board.name = "board"
	
	new_ui = new_ui.instantiate()
	
	add_child(new_ui)
	current_ui = new_ui
	board.add_child(new_board)
	current_board = new_board
	$SubViewportContainer/SubViewport.world_2d = board.world_2d

