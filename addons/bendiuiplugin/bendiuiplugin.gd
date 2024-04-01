@tool
extends EditorPlugin

var button
func _enter_tree():
	button = preload("res://addons/PlugInScene/Scene.tscn").instantiate()
	add_control_to_dock(DOCK_SLOT_LEFT_BL,button)
	pass


func _exit_tree():
	# Clean-up of the plugin goes here.
	remove_control_from_docks(button)
	button.free()
	pass
