extends Node3D
# Courtesy of FBcosentino's demo project

var mat

func _ready():
	# Material must be made unique in order to have independent mesh copies
	mat = $MeshInstance3D.get_surface_override_material(0).duplicate()
	$MeshInstance3D.set_surface_override_material(0, mat)


func _on_aircraft_module_engine_update_interface(values):
	var power = values["engine_power"]
	scale.z = 0.05+power
	mat.albedo_color = lerp(Color.BLACK, Color.WHITE, power)
