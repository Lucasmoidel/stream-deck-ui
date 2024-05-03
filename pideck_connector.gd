extends Control

var data
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_files_file_selected(path):
	$open_file_select.visible = false
	var json = JSON.new()
	var file = FileAccess.open(path, FileAccess.READ)
	var json_text = file.get_as_text()
	file.close()
	
	var error = json.parse(json_text)
	if error == OK:
		data = json.data
	else:
		print("JSON Prase Error: ", json.get_error_message(), " in ", json_text)
	if "version" in data:
		$"/root/FileSave".piData = data
	else:
		$err.set_text("Wrong JSON file loaded! Make sure you are searching the correct directory!")
		$err.visible = true
		$open_file_select.visible = true


func _on_open_file_select_button_up():
	$files.visible = true
