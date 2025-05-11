extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





func _on_btn_fullscreen_toggle_toggled(fullscreen_toggled):
	print("Fullscreen toggled " + str(fullscreen_toggled))
	
	if fullscreen_toggled == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED, 0)
		
	elif fullscreen_toggled == false:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MINIMIZED, 0)
		


func _on_btn_vsync_toggle_toggled(vsync_toggled):
	print("Vsync toggled " + str(vsync_toggled))
	
	if vsync_toggled == true:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ADAPTIVE)
		
	elif vsync_toggled == false:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		


func _on_back_button_pressed():
	hide() # Works with the system of the ingame options
