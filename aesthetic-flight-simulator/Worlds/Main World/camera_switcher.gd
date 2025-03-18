extends Node

@export var Camera1: Camera3D # 3rd Person Camera
@export var Camera2: Camera3D # 1st Person Camera

@onready var camera2_active = false 
## Establishes a boolean between 2 cameras to use for a camera switcher
## Spaghetti code only usable if there are only 2 cameras
##

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

## Changes the camera
func change_camera():
	if Input.is_action_just_pressed('switch camera') and camera2_active == false:
		Camera2.make_current() ## Currently only works to switch to first person, cannot switch back
		var camera2_active = true
	if Input.is_action_just_pressed('switch camera') and camera2_active == true:
		Camera1.make_current()
		var camera2_active = false

# Called on any input
func _input(event):
	change_camera()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
