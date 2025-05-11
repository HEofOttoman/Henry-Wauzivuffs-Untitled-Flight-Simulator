extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_gran_vals_1_pressed():
	AudioManager.stop()
	AudioManager.Music1.play()
	# Replace with function body.

func _on_zu_tanze_zu_sprunge_1_pressed():
	AudioManager.stop()
	AudioManager.Music2.play()
	# Replace with function body.



func _on_btn_reverb_toggled(reverb_toggled):
	print("Reverb toggled " + str(reverb_toggled))
	
	if reverb_toggled == false:
		AudioServer.set_bus_effect_enabled(1, 0, false)
		
	elif reverb_toggled == true:
		AudioServer.set_bus_effect_enabled(1, 0, true)
		 # Replace with function body.



func _on_btn_music_toggle_toggled(music_toggled):
	print("Music toggled " + str(music_toggled))
	
	if music_toggled == true:
		AudioServer.set_bus_volume_db(1, -30)
		
	elif music_toggled == false:
		AudioServer.set_bus_volume_db(1, -80) # Mutes the bus (-80 is the lowest level)
		


func _on_back_button_pressed():
	#get_tree().change_scene_to_file("res://UI/Options/Options.tscn")
	hide()
