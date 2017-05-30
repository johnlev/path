extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_pressed(true)
	set_flat(true)
	pass

func _pressed():
	print("Pressed...")
	get_tree().change_scene("res://Scenes/Menu.tscn")