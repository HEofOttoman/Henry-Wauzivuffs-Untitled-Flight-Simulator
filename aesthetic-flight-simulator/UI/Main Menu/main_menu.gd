extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_play_button_pressed():
	AudioManager.button_click_sfx.play() # Plays the button click SFX
	
	#get_tree().change_scene_to_file("res://Worlds/Main World/Main World.tscn") # Goes to playable scene world
	get_tree().change_scene_to_file("res://UI/World Select/World Select.tscn") # Goes to playable scene world



func _on_options_button_pressed():
	AudioManager.button_click_sfx.play() # Plays the button click SFX
	
	get_tree().change_scene_to_file("res://UI/Options/Options.tscn") # Replace with new options scene.



func _on_credits_button_pressed():
	AudioManager.button_click_sfx.play() # Plays the button click SFX
	
	get_tree().change_scene_to_file("res://UI/Credits/Credits Menu.tscn")



func _on_quit_button_pressed():
	AudioManager.button_click_sfx.play() # Plays the button click SFX
	
	get_tree().quit()




func _on_repo_link_pressed():
	OS.shell_open("https://github.com/HEofOttoman/Henry-Wauzivuffs-Untitled-Flight-Simulator")

func _on_itch_link_pressed():
	OS.shell_open("https://henry-wauzivuff.itch.io/henry-wauzivuffs-untitled-flight-simulator")
