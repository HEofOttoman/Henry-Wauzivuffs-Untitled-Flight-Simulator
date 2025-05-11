extends Node3D
## Script to play the plane animations

@export var Animation_Player: Node

## Establishes an enum for the different states of the aircraft
enum aircraft_state{IDLE, DEPLOYING_AIR, DEPLOYING, STOWING_AIR, STOWING, SPINNING, SPINNING_STOWED}

## Then puts the two states into a variable
var current_aircraft_state = aircraft_state.IDLE

## ^Above variables for possible later use when the animation tree is used


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Makes sure animation is activated on start


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

## Plays the propeller spinning animation (defunct)
func _on_aircraft_module_engine_update_interface(values):
	var power = values["engine_power"] ## Somehow get the speed to increase with the power?
	$AnimationPlayer.play("Propeller Spin ", -1, power)
	## For possible use when animation players
	#if aircraft_state.IDLE:
		#$AnimationPlayer.play("Propeller Spin ")
		#aircraft_state.SPINNING

## Plays the landing gear animations (defunct)
func _on_LandingGear_update_interface(values):
	if values["lgear_stowing"]:
		$AnimationPlayer.play("Stow")
	if values["lgear_deploying"]:
		$AnimationPlayer.play("Deploy")
	
	if values["lgear_up"]:
		$AnimationPlayer.play("Stow", -1, 1.0, true) # move to end
	if values["lgear_down"]:
		$AnimationPlayer.play("Deploy", -1, 1.0, true) # move to end
