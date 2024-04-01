@tool

extends Control

@export var LabelforButton :LineEdit
@export var FileExplorer : FileDialog
var ButtonScript = load("res://addons/bendiuiplugin/Buttonfunctionality.gd")
var pathToSaveTo
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
	var NewButton = Button.new()
	NewButton.name = LabelforButton.text + "Button"
	NewButton.set_script(ButtonScript)
	NewButton.text = LabelforButton.text
	return NewButton

# Sets the path of the saved packed scene
func _on_file_dialog_dir_selected(dir):
	pathToSaveTo = dir+"/"


func _on_setpathbutton_pressed():
	FileExplorer.show()
