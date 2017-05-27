extends PathFollow2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var trueOffset
var deltaMultiplier
var currentChange

func _ready():
	set_cubic_interpolation(true)
	set_loop(true)
	set_process(true)
	trueOffset= get_unit_offset()
	deltaMultiplier= 30
	currentChange= 0

func _process(delta):
	#print("I'm processing. Delta= ", delta)
	currentChange= delta*deltaMultiplier
	trueOffset= get_offset()+currentChange
	_draw()
	set_offset(trueOffset)

func _draw():
	for i in range(10):
		draw_circle(Vector2(0, 0), 20, Color(255, 255, 255))
		set_offset(get_offset()-currentChange*20)
	#draw_circle(Vector2(0, 0), 20, Color(255, 255, 255))