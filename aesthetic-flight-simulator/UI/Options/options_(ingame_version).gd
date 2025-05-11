extends Control

@onready var video_options = $VideoOptions
@onready var controls_menu = $"Controls Menu"
@onready var music_options = $MusicOptions


# Called when the node enters the scene tree for the first time.
func _ready():
	hide() # Makes sure the menu is hidden on start

## Goes back to main menu
func _on_back_button_pressed():
	hide()
	## Returns to the Main Menu (change to go back to previous scene somehow)


func _on_btn_controls_pressed():
	controls_menu.show()
	 # Replace with function body.


func _on_btn_music_options_pressed():
	music_options.show()
	 # Replace with function body.


func _on_btn_video_options_pressed():
	video_options.show()
	 # Replace with function body.
