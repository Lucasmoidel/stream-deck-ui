extends Panel
var pressed
@onready var drop = $OptionButton
# Called when the node enters the scene tree for the first time.
func _input(event):
	if drop.selected == 0 and event is InputEventKey:
		pressed = event
	
	
func _process(delta):
	print (pressed)
