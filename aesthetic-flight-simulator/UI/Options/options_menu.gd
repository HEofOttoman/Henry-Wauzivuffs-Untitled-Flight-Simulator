extends CanvasLayer

@onready var video_options = $VideoOptions
@onready var controls_menu = $"Controls Menu"
@onready var music_options = $MusicOptions


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
	#get_tree().change_scene_to_file("res://UI/Options/Music Options/Music Options.tscn")
	music_options.show()
	

# Opens the controls menu
func _on_btn_controls_pressed():
	AudioManager.play_clickSFX()
	#get_tree().change_scene_to_file("res://UI/Options/Controls Menu/Controls Menu.tscn")
	controls_menu.show()


func _on_btn_video_options_pressed():
	AudioManager.play_clickSFX()
	#get_tree().change_scene_to_file("res://UI/Options/Video Options/Video Options.tscn")
	video_options.show()
