extends Node2D


# Called when the node enters the scene tree for the first time.
func instantiate_board(board_elements):
	for element in board_elements:
		add_element(element)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func add_element(new_element):
	if new_element is EncodedObjectAsID:
		print("Now converting" + str(new_element))
		new_element = instance_from_id(new_element.object_id)
		print("Is now " + str(new_element))
	
	$elements.add_child(new_element)
	if !new_element.visible:
		new_element.show()
	new_element.top_level = true
	if new_element.position.x <= 0 or new_element.position.y <= 0:
		new_element.position = $elements.position


func add_draggable(new_draggable):
	$draggables/draggables.add_child(new_draggable)
