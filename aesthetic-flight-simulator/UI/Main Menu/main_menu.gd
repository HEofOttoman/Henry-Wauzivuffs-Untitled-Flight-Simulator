extends CanvasLayer

@onready var Audio := %AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

# My attempt to implement a clicking sound in the Game
func playAudio():
	Audio.play()

func _on_play_button_pressed():
	playAudio()
	
	get_tree().change_scene_to_file("res://Worlds/Main World/Main World.tscn") # Goes to playable scene world



func _on_options_button_pressed():
	playAudio()
	
	get_tree().change_scene_to_file("res://UI/Options/Options.tscn") # Replace with new options scene.



func _on_credits_button_pressed():
	playAudio()
	
	get_tree().change_scene_to_file("res://UI/Credits/Credits Menu.tscn")



func _on_quit_button_pressed():
	playAudio()
	
	get_tree().quit()
