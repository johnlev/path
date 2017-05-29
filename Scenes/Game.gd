extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	randomize()
#	get_node("Silk").set_process(false)
	var backId=1#=randi()%5
	print(backId)
	if (backId==0):
		get_node("Background").set_texture(load("res://Textures/PlainBackground/constellation.png"))
		get_node("Background").translate(Vector2(375,667))
	if (backId==1):
		get_node("Background").set_texture(load("res://Textures/PlainBackground/meadows.png"))
		get_node("Background").translate(Vector2(375,667))
		get_node("Opacity").play("Breathe")
	if (backId==2):
		get_node("Background").set_texture(load("res://Textures/PlainBackground/Black.png"))
		get_node("Background").translate(Vector2(375,667))
		get_node("Opacity").play("Breathe")
	if (backId==3):
		get_node("Background").set_texture(load("res://Textures/PlainBackground/Clouds.png"))
		get_node("Background").translate(Vector2(375,667))
	if (backId==4):
		get_node("Breath").set_texture(load("res://Textures/PlainBackground/border.jpg"))
		get_node("Breath").translate(Vector2(25,667))
		get_node("Breath2").set_texture(load("res://Textures/PlainBackground/border.jpg"))
		get_node("Breath2").translate(Vector2(725,667))
		get_node("Breathing").play("Breathe")
		
	if (backId==5):
		get_node("Silk").set_process(true)
	# Called every time the node is added to the scene.
	# Initialization here
	
	pass
