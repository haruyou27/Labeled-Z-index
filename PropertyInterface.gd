extends EditorProperty

var index_list := OptionButton.new()
var items :Dictionary

onready var node :CanvasItem = get_edited_object()
onready var property := get_edited_property()

func _init() -> void:
	_update_button()
	index_list.connect("item_selected", self, '_selected_Zindex')
	label = 'Z Index'

	add_child(index_list)
	ProjectSettings.connect("project_settings_changed", self, '_update_button')
	
func _update_button() -> void:
	items = ProjectSettings.get('layer_names/z_index/z_index')
	for key in items.keys():
		if typeof(key) != TYPE_STRING or typeof(items[key]) != TYPE_INT:
			continue
		index_list.add_item(key)
	
func _selected_Zindex(key) -> void:
	var value = items[key]
	emit_changed(property, key)
	
	if not value:
		return
	VisualServer.canvas_item_set_z_index(node.get_canvas_item(), value)
