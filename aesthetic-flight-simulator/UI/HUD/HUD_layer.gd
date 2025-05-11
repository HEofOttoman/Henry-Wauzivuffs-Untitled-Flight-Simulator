extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if Input.is_action_just_pressed("toggle HUD"):
		toggle_hud()

## I tried utilising node groups to only hide HUD. That failed.
func toggle_hud():
	if visible == true:
		hide()
	if visible == false:
		show()

	#match HUD_state:
		#if HUD_state = HUD_visible == true:
			#get_tree().call_group("HUD", "hide")
			#
		#if HUD_visible = HUD_visible == false:
			#get_tree().call_group("HUD", "show")
			
