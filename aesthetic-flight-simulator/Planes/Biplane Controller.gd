extends CharacterBody3D
### This script is the controller for the biplane

## Used to find the plane
@onready var mesh = %Biplane

## Can't fly below this speed
@export var min_flight_speed = 10
## Maximum airspeed
@export var max_flight_speed = 30
## Turn rate
@export var turn_speed = 0.75
## Climb/dive rate
@export var pitch_speed = 0.5
## Wings "autolevel" speed
@export var level_speed = 3.0
## Throttle change speed
@export var throttle_delta = 30
## Acceleration/deceleration
@export var acceleration = 6.0

## Current speed
var forward_speed = 0
## Throttle input speed
var target_speed = 0
## Lets us change behavior when grounded
var grounded = false

## Currently doesn't work in Godot 4.3 for some reason
#var velocity = Vector3.ZERO
var turn_input = 0
var pitch_input = 0

## Used to update the DebugOverlay (which I do not have)
#func _ready():
	#DebugOverlay.stats.add_property(self, "grounded", "")
	#DebugOverlay.stats.add_property(self, "transform:origin:y", "round")
	#DebugOverlay.stats.add_property(self, "forward_speed", "round")


func _physics_process(delta):
	get_input(delta)
	# Rotate the transform based on the input values
	transform.basis = transform.basis.rotated(transform.basis.x, pitch_input * pitch_speed * delta)
	transform.basis = transform.basis.rotated(Vector3.UP, turn_input * turn_speed * delta)
	# If on the ground, don't roll the body
	if grounded:
		%Biplane.rotation.y = 0
	else:
		# Roll the body based on the turn input
		%Biplane.rotation.y = lerp(%Biplane.rotation.y, turn_input, level_speed * delta)
	# Accelerate/decelerate
	forward_speed = lerp(forward_speed, target_speed, acceleration * delta)
	# Movement is always forward
	velocity = -transform.basis.z * forward_speed
	# Handle landing/taking off
	if is_on_floor():
		if not grounded:
			rotation.x = 0
		velocity.y -= 1
		grounded = true
	else:
		grounded = false

	#velocity = move_and_slide(velocity, Vector3.UP)

func get_input(delta):
	# Throttle input
	if Input.is_action_pressed("throttle_up"):
		target_speed = min(forward_speed + throttle_delta * delta, max_flight_speed)
	if Input.is_action_pressed("throttle_down"):
		var limit = 0 if grounded else min_flight_speed
		target_speed = max(forward_speed - throttle_delta * delta, limit)
	# Turn (roll/yaw) input
	turn_input = 0
	if forward_speed > 0.5:
		turn_input -= Input.get_action_strength("roll_right")
		turn_input += Input.get_action_strength("roll_left")
	# Pitch (climb/dive) input
	pitch_input = 0
	if not grounded:
		pitch_input -= Input.get_action_strength("pitch_down")
	if forward_speed >= min_flight_speed:
		pitch_input += Input.get_action_strength("pitch_up")
