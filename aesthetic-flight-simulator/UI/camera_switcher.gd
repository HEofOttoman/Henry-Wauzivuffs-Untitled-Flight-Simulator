extends Node

@export var Camera1: Camera3D # 3rd Person Camera
@export var Camera2: Camera3D # 1st Person Camera


enum camera_state{FIRST, THIRD}
## Establishes an enum between 2 cameras to use for a camera switcher

var current_cam_state = camera_state.THIRD
## Then puts the two states into a variable

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

## Function that changes the camera
func change_camera():
	match current_cam_state:
		camera_state.THIRD:
			Camera1.make_current()
			current_cam_state = camera_state.FIRST
		camera_state.FIRST:
			Camera2.make_current()
			current_cam_state = camera_state.THIRD


## Called on any input
func _input(_event):
	if Input.is_action_just_pressed('switch camera'):
		change_camera()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
