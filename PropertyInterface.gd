extends EditorProperty

var button := OptionButton.new()
var items :Dictionary

func _init(current_z_index:int) -> void:
	items = ProjectSettings.get_setting('layer_names/z_index/z_index')
	for key in items.keys():
		if typeof(key) != TYPE_STRING or typeof(items[key]) != TYPE_INT:
			#Ignore all pair that key is not string and value is not int
			continue
		button.add_item(key)
		
	label = 'Z Index'
	button.selected = current_z_index
	button.connect("item_selected", self, '_selected_Zindex')

	add_child(button)
	add_focusable(button)
	
func _selected_Zindex(key) -> void:
	var value = items[button.get_item_text(key)]
	if not value:
		return
	
	value = clamp(value, VisualServer.CANVAS_ITEM_Z_MIN, VisualServer.CANVAS_ITEM_Z_MAX)	
	var node := get_edited_object()
	if node is Node2D:
		node.z_index = value
	VisualServer.canvas_item_set_z_index(node.get_canvas_item(), value)
