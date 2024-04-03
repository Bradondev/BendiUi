@tool
extends EditorPlugin

var ListOfCustomTypes = [
{"Name":'ExitButton', "Script":"res://addons/bendiuiplugin/Scripts/ButtonFuctions/ExitButton.gd","Icon":"res://addons/bendiuiplugin/Art/exit.tres" },
{"Name":'ChangeSceneButton', "Script":"res://addons/bendiuiplugin/Scripts/ChangeScene.gd","Icon":"res://addons/bendiuiplugin/Art/ChangeScene.tres" }
]
func _enter_tree():
	for buttons in ListOfCustomTypes:

		var NewItem = add_custom_type(buttons.Name,"Control",load(buttons.Script),load(buttons.Icon))

func _exit_tree():
	for button in ListOfCustomTypes:
		remove_custom_type(button.Name)


