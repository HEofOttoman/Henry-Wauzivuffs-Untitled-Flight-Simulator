extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

## Goes back to main menu
func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://UI/Main Menu.tscn") 
	## Returns to the Main Menu (change to go back to previous scene somehow)
