@tool
extends BenDiButtonBase
class_name ExitButton
@export var Path : String
func _enter_tree():
	super._enter_tree()
	set_script(load(Path))


