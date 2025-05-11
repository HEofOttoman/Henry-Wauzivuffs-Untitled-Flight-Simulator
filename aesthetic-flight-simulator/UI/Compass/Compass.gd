extends Control

#@onready var compass_center_ref = $"Position Panel/Compass/InnerPanel/CenterRef"
#@onready var attitude_ground = $"Position Panel/Horizon/InnerPanel/CenterRef/Ground"
#@onready var attitude_center_ref = $"Position Panel/Horizon/InnerPanel/CenterRef"

#@export var compass_center_ref: Control
#@export var attitude_ground: ColorRect
#@export var attitude_center_ref: Control
## ^The results of several successive horrible mistakes

@onready var compass_center_ref = $Panel/Compass/InnerPanel/CenterRef
@onready var attitude_ground = $Panel/Horizon/InnerPanel/CenterRef/Ground
@onready var attitude_center_ref = $Panel/Horizon/InnerPanel/CenterRef


# InstrumentAttitude module sends the following dictionary:
# values = {
#     "roll": float <-180.0 - +180.0>
#     "pitch": float <-90.0 - +90.0>
#     "bearing": float <-90.0 - +90.0>
# }

func update_interface(values: Dictionary):
	attitude_center_ref.rotation_degrees = -values["roll"]
	attitude_ground.position.y = (values["pitch"]/90.0)*71.0
	compass_center_ref.rotation_degrees = (-values["bearing"])
	#$UIGForce/Panel/Bar.value = values["g"]
