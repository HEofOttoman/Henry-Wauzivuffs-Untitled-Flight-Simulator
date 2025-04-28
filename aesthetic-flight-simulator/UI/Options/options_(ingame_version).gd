extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	hide() # Makes sure the menu is hidden on start

## Goes back to main menu
func _on_back_button_pressed():
	hide()
	## Returns to the Main Menu (change to go back to previous scene somehow)
