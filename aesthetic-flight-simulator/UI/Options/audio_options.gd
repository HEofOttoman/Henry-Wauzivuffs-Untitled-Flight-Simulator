extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$"Volume Section/Master Volume Slider".value = db_to_linear(AudioServer.get_bus_volume_db(0))
	$"Volume Section/Music Slider".value = db_to_linear(AudioServer.get_bus_volume_db(1))
	$"Volume Section/SFX Slider".value = db_to_linear(AudioServer.get_bus_volume_db(2))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Master Volume Slider
func _on_master_volume_slider_mouse_exited():
	release_focus()

func _on_master_volume_slider_value_changed(value):
	# My own code to save settings instead of a save button
	AudioServer.set_bus_volume_db(0, linear_to_db($"Volume Section/Master Volume Slider".value))
	
	#pass # Replace with a save method to save the settings*


# Music Volume Slider
func _on_music_slider_mouse_exited():
	release_focus() # Releases focus

func _on_music_slider_value_changed(value):
	# My own code to save settings instead of a save button 
	AudioServer.set_bus_volume_db(1, linear_to_db($"Volume Section/Music Slider".value))
	
	#pass # Replace with a save method to save the settings*


# SFX Volume Slider
func _on_sfx_slider_mouse_exited():
	release_focus()

func _on_sfx_slider_value_changed(value):
	# My own code to save settings instead of a save button
	AudioServer.set_bus_volume_db(2, linear_to_db($"Volume Section/SFX Slider".value))
	
	#pass # Replace with a save method to save the settings*
