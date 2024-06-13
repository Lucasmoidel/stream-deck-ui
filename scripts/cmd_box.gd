extends Panel
var list_str
var pressed
var key_str
var foucus_item
@onready var drop = $press_properties/OptionButton


# Called when the node enters the scene tree for the first time.
func _input(event):
	if drop.selected == 0 and event is InputEventKey:
		pressed = event

func _unhandled_input(event):
	if event is InputEventKey:
		for i in range(drop.item_count):
			list_str = drop.get_item_text(i)
			
			key_str = pressed.as_text_keycode()
			print("key_str " + key_str.to_lower() + ", " + list_str)
			if key_str.to_lower() == list_str:
				drop.select(i)
				print("ahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh")
				break
	
func _process(delta):
	#print (pressed)
	#while 
	#print(drop.get_item_text(2))
	#drop.select()

	pass
