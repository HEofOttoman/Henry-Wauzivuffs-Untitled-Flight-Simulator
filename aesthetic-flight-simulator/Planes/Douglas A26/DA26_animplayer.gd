extends Node3D
## Script to play the plane animations

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

## Plays the propeller spinning animation (defunct)
func _on_aircraft_module_engine_update_interface(values):
	$AnimationPlayer.play("Propeller Spin")
	
## Plays the landing gear animations (defunct)
func _on_LandingGear_update_interface(values):
	if values["lgear_stowing"]:
		$AnimationPlayer.play("Landing Gear")
	if values["lgear_deploying"]:
		$AnimationPlayer.play_backwards("Landing Gear")
	
	if values["lgear_up"]:
		$AnimationPlayer.play("Stow", -1, 1.0, true) # move to end
	if values["lgear_down"]:
		$AnimationPlayer.play("Deploy", -1, 1.0, true) # move to end
