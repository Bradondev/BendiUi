@tool
extends TextureButton
class_name  BenDiButtonBase



var TextureNormal = preload("res://addons/bendiuiplugin/Art/BlueButton.tres")
var TexturePressed = preload("res://addons/bendiuiplugin/Art/BlueButtonPressed.tres")
func _enter_tree():
	set_texture_normal(TextureNormal)
	set_texture_pressed(TexturePressed)
	texture_filter = 1

	#set_script()
