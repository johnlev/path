extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var dot
var cursor
func _ready():
	randomize()
#	get_node("Silk").set_process(false)
	var backId=randi()%6
	print(backId)
	if (backId<4):
		if (backId==0):
			get_node("Background").set_texture(load("res://Textures/PlainBackground/constellation.png"))
			get_node("Music").set_stream(load("res://Music/constellation.ogg"))
			cursor="res://Textures/Dots/sun.png"
			dot = "res://Textures/Dots/star.png"
		if (backId==1):
			get_node("Background").set_texture(load("res://Textures/PlainBackground/meadows.png"))
			get_node("Music").set_stream(load("res://Music/meadow.ogg"))
			cursor="res://Textures/Dots/white_icon.png"
			dot = "res://Textures/Dots/yellow.png"
		if (backId==2):
			get_node("Background").set_texture(load("res://Textures/PlainBackground/Black.png"))
			get_node("Music").set_stream(load("res://Music/black gradient.ogg"))
			cursor="res://Textures/Dots/white_icon.png"
			dot = "res://Textures/Dots/star.png"
		if (backId==3):
			get_node("Background").set_texture(load("res://Textures/PlainBackground/Clouds.png"))
			get_node("Music").set_stream(load("res://Music/cloud.ogg"))
			cursor="res://Textures/Dots/sun.png"
			dot = "res://Textures/Dots/sprite_darkblue.png"
		get_node("Background").translate(Vector2(375,667))
#		get_node("Opacity").play("Breathe")
	if (backId==4):
		cursor="res://Textures/Dots/white_icon.png"
		dot = "res://Textures/Dots/green.png"
		get_node("Breath").set_texture(load("res://Textures/PlainBackground/border.jpg"))
		get_node("Breath").translate(Vector2(25,667))
		get_node("Breath2").set_texture(load("res://Textures/PlainBackground/border.jpg"))
		get_node("Breath2").translate(Vector2(725,667))
		get_node("Breathing").play("Breathe")
		get_node("Music").set_stream(load("res://Music/white outline.ogg"))
		
	if (backId==5):
		get_node("Background").set_texture(load("res://Textures/PlainBackground/Silk.jpg"))
		cursor="res://Textures/Dots/purple_icon.png"
		dot = "res://Textures/Dots/sprite_darkblue.png"
		get_node("Background").translate(Vector2(375,667))
		get_node("Music").set_stream(load("res://Music/silk.ogg"))
	get_node("Music").play()
	if (backId==2):
		get_node("Path2D/Cursor/Path").set_texture(load(cursor))
		get_node("Path2D/dot").set_texture(load("res://Textures/Dots/blue.png"))
		get_node("Path2D/dot1").set_texture(load("res://Textures/Dots/purple.png"))#load(dot))
		get_node("Path2D/dot2").set_texture(load("res://Textures/Dots/red.png"))#load(dot))
		get_node("Path2D/dot3").set_texture(load("res://Textures/Dots/orange.png"))#load(dot))
		get_node("Path2D/dot4").set_texture(load("res://Textures/Dots/yellow.png"))#load(dot))
		get_node("Path2D/dot5").set_texture(load("res://Textures/Dots/green.png"))#load(dot))
	else:
		get_node("Path2D/Cursor/Path").set_texture(load(cursor))
		get_node("Path2D/dot").set_texture(load(dot))
		get_node("Path2D/dot1").set_texture(load(dot))
		get_node("Path2D/dot2").set_texture(load(dot))
		get_node("Path2D/dot3").set_texture(load(dot))
		get_node("Path2D/dot4").set_texture(load(dot))
		get_node("Path2D/dot5").set_texture(load(dot))
	# Called every time the node is added to the scene.
	# Initialization here
	
	pass
