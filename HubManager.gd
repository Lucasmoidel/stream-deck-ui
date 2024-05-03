extends Control

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
