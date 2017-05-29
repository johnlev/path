extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	randomize()
#	get_node("Silk").set_process(false)
	var backId=randi()%4
	print(backId)
	if (backId==0):
#	Textures\PlainBackground	
		get_node("Background").set_texture(load("res://Textures/PlainBackground/constellation.png"))
	if (backId==1):
		get_node("Background").set_texture(load("res://Textures/PlainBackground/meadows.png"))
	if (backId==2):
		get_node("Background").set_texture(load("res://Textures/PlainBackground/Black.png"))
	if (backId==3):
		get_node("Background").set_texture(load("res://Textures/PlainBackground/Clouds.png"))
	if (backId==4):
		get_node("Silk").set_process(true)
	# Called every time the node is added to the scene.
	# Initialization here
	get_node("Background").translate(Vector2(375,667))
	pass
