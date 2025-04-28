extends Node

# Called when the node enters the scene tree for the first time.
#func _ready(): # I would have disabled this, but this leads to inexpplicable errors.
	#pass

## Gets a reference to all sounds played
#@onready var button_click_sfx = $"Button Click SFX"
@export var button_click_sfx: AudioStreamPlayer ## Button Click SFX

@export var Music1: AudioStreamPlayer ## Gran Vals
@export var Music2: AudioStreamPlayer ## ZTZS

## Function to play the button click SFX
func play_clickSFX(): 
	button_click_sfx.play()
	

## Rudimentary stop function to get the settings in 'music_options.tscn' to work
func stop():
	if Music1.playing:
		Music1.stop()
	if Music2.playing:
		Music2.stop()
	
