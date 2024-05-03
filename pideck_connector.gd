extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_files_file_selected(path):
	$open_file_select.visible = false
	var file = FileAccess.open(path, FileAccess.READ)
	print(file["profile"])


func _on_open_file_select_button_up():
	$files.visible = true
