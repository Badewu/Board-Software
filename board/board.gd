extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func add_element(new_element):
	$elements.add_child(new_element)
	new_element.top_level = true
	new_element.position = $elements.position


func add_draggable(new_draggable):
	$draggables/draggables.add_child(new_draggable)
