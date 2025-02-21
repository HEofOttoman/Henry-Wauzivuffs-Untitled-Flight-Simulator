# Pause Menu Script
# Based off of Kobedev's tutorial
extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	hide() # Hides pause menu on initial start (addition from tutorial)
	$AnimationPlayer.play("RESET")

# Resumes game
func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("Pause Blur") # Plays blur animation

# Pauses game 
func pause(): 
	get_tree().paused = true
	$AnimationPlayer.play("Pause Blur") # Plays blur animation
 

# Detect Escape Key
func testEsc(): ## Tests for escape key
	if Input.is_action_just_pressed("pause") and get_tree().paused == false:
		pause()
		show() # Code Addition*
	elif Input.is_action_just_pressed("pause") and get_tree().paused == true:
		resume()
		hide() # Code Addition*

func _input(event): # Maybe change to directly check for 'pause'? 
	testEsc() # Test for escape through this instead of _process(delta)*
 
## Button functions
func _on_resume_pressed(): # Resume button
	resume()


func _on_restart_pressed(): # Restart button
	resume() # Code to resume the scene before reloading*
	get_tree().reload_current_scene() # Reloads the scene


func _on_options_pressed(): # Options button (*my own code)
	resume() # Code to unpause the game switching scenes*
	get_tree().change_scene_to_file("res://UI/Options/Options.tscn") # Goes to the options menu


func _on_main_menu_pressed(): # Main Menu Button
	resume() # Code to unpause the game before switching scene*
	get_tree().change_scene_to_file("res://UI/Main Menu/Main Menu.tscn") # Goes to the main menu


func _on_quit_pressed(): # Quit button
	get_tree().quit() # 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#testEsc() ## Tests for Escape key (every fram) deprecated to avoid lag issues
	pass
