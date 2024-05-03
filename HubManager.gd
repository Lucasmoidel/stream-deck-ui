extends Control

@onready var tempSave = $"/root/FileSave"
@onready var data = $"/root/FileSave".piData
@onready var dropdown = $"options/drop down"
# Called when the node enters the scene tree for the first time.
func _ready():
	$info.set_text(data["sku"]+" - v"+data["version"])
	var num = 0
	for each in data["profiles"]:
		var text = data["profiles"][each]["name"]
		dropdown.add_item(text,num)
		num+=1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_new_button_up():
	var max = len(data["profiles"])
	print(max)
	data["profiles"][str(max)] = {"name":("Profile "+str(max)),"1":{},"2":{},"3":{},"4":{},"5":{},"6":{},"7":{},"8":{}}
	get_tree().reload_current_scene()
