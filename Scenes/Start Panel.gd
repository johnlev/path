extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var style = StyleBoxFlat.new()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	add_style_override("panel", style)
	var color = Color("#d8edf3")
	style.set_bg_color(color)
	update()
	pass
