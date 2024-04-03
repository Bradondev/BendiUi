#@tool

extends Control

@export var LabelforButton :LineEdit
@export var FileExplorer : FileDialog
@export var simpleButton : Button
@export var Optionbutton: OptionButton
var ButtonScript = load("res://addons/bendiuiplugin/Buttonfunctionality.gd")
var pathToSaveTo :String

var onPressFunctionName: String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# When the create button is clicked it creates a new pack scene to save
func _on_Createbutton_pressed():
	print_debug("made new button")
	var packed_scene = PackedScene.new()
	packed_scene.pack(CreateButton())
	ResourceSaver.save(packed_scene, pathToSaveTo+packed_scene._bundled["names"][0]+".tscn")


func CreateButton():
	var NewButton = simpleButton
	NewButton.name = LabelforButton.text + "Button"
	NewButton.set_script(ButtonScript)
	NewButton.OnPressFunction = onPressFunctionName
	NewButton.connect("pressed",Callable(NewButton,onPressFunctionName))
	#NewButton.OnPressFunction = onPressFunctionName
	#NewButton.text = LabelforButton.text
	return NewButton

# Sets the path of the saved packed scene
func _on_file_dialog_dir_selected(dir):
	pathToSaveTo = dir+"/"


func _on_setpathbutton_pressed():
	FileExplorer.show()
func UpdateSampleButton():
	simpleButton.text = LabelforButton.text

func _on_LabelChanged_changed(new_text):
	UpdateSampleButton()

func OnPressedFunctionChanged(index):
	print_debug(Optionbutton.get_item_text(index))
	onPressFunctionName = Optionbutton.get_item_text(index)
	pass # Replace with function body.
