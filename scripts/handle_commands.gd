extends Control

@onready var tempSave = $"/root/FileSave"

var profile_data

# Called when the node enters the scene tree for the first time.
func _ready():
	profile_data = tempSave.piData["profiles"][str(tempSave.cur_profile)]
	$bg/info.set_text("Button "+str(tempSave.cur_button+1)+" - Profile "+str(tempSave.cur_profile+1))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_button_up():
	get_tree().change_scene_to_file("uid://lh331jkwlfji")
