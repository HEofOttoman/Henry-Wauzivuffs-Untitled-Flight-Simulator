extends Label3D


# Called when the node enters the scene tree for the first time.
func _ready():
	show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _input(event):
	if Input.is_key_pressed(KEY_X):
		hide()
		
	if Input.is_key_pressed(KEY_Z):
		show()
