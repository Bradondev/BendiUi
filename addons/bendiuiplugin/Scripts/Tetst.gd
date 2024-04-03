@tool
extends Node

@export var something_else:String

var custom_position:Vector2
var custom_rotation_degrees:float
var custom_scale:Vector2

func _get_property_list():
	return [
		{
			name = "Custom",
			type = TYPE_NIL,
			hint_string = "custom_",
			usage = PROPERTY_USAGE_CATEGORY
		},
		{
			name = "custom_position",
			type = TYPE_VECTOR2
		},
		{
			name = "custom_rotation_degrees",
			type = TYPE_FLOAT
		},
		{
			name = "custom_scale",
			type = TYPE_VECTOR2
		}
	]
