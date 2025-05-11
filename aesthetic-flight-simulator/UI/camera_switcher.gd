extends Node

@export var Camera1: Camera3D ## 3rd Person Camera
@export var Camera2: Camera3D ## 1st Person Camera
@export var Camera3: Camera3D ## Free Camera Tripod


enum camera_state{FIRST, THIRD, FREE}
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
			print("Camera Mode: THIRD")
		camera_state.FIRST:
			Camera2.make_current()
			current_cam_state = camera_state.FREE
			print("Camera Mode: FIRST")
		camera_state.FREE:
			Camera3.make_current()
			current_cam_state = camera_state.THIRD
			print("Camera Mode: FREE (Wonky)")
		
		#camera_state.FIRST:
			#Camera2.make_current()
			#current_cam_state = camera_state.FREE
			#print("Camera Mode: FREE")
		#camera_state.FREE:
			#Camera3.make_current()
			#current_cam_state = camera_state.THIRD
			#print("Camera Mode: THIRD")
		


## Called on any input
func _input(_event):
	if Input.is_action_just_pressed('switch camera'):
		change_camera()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
