tool
extends EditorPlugin

var plugin := preload("res://addons/Labeled-Z-index/InspectorInterface.gd").new()
const setting_name := 'layer_names/z_index/z_index'

func _enter_tree():
	add_inspector_plugin(plugin)
	
	if ProjectSettings.has_setting(setting_name):
		return
	ProjectSettings.set_setting(setting_name, {'Not Set' : 0})
	ProjectSettings.set_initial_value(setting_name, {'Not Set' : 0})
	
	var error := ProjectSettings.save()
	if error:
		push_error('Error %d when saving ProjectSettings.' % error)

func _exit_tree():
	remove_inspector_plugin(plugin)
