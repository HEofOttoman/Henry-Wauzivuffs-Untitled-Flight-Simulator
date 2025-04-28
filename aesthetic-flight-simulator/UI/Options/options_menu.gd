extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


## Goes back to main menu
func _on_back_button_pressed():
	AudioManager.play_clickSFX()
	get_tree().change_scene_to_file("res://UI/Main Menu/Main Menu.tscn") 
	## Returns to the Main Menu (change to go back to previous scene somehow)


func _on_btn_music_options_pressed():
	AudioManager.play_clickSFX()
	get_tree().change_scene_to_file("res://UI/Options/Music Options/Music Options.tscn")
	# Replace with function body.


func _on_btn_controls_pressed():
	AudioManager.play_clickSFX()
	get_tree().change_scene_to_file("res://UI/Options/Controls Menu/Controls Menu.tscn")
	# Opens the controls menu
