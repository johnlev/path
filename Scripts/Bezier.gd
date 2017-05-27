extends Path2D

var projectResolution=Vector2(Globals.get("display/width"),Globals.get("display/height"))

var curve = self.get_curve() 
var mag = 100
var marg = 50
var qx = 2
var qy = 9

var qdx = (projectResolution[0]-(marg*2))/(qx)
var qdy = (projectResolution[1]-(marg*2))/(qy)

var angles = [90,-90,-90,45,-90,-180,-90,270,-90,90,180,45,-90,-90]#,180,0,180,0,180,0,180,0,180,0,180,0,180,0,180]

func _init():
	var pos = Vector2(projectResolution[0]/2,projectResolution[1]/2)
	var prev = Vector2(projectResolution[0]/2,projectResolution[1]/2)
	var theta = 0
	var neg = [-1,1]
	
	var startx=0
	var starty=0
	var dir = true
	
	var thprev = 0
	var inprev = Vector2(0,0)
	var outprev = Vector2(0,0)
		
	for i in range(12):
		theta=angles[i]
 
		var inVec = Vector2(mag * cos(theta), mag * sin(theta))
		var outVec = Vector2(mag * cos(theta), mag * sin(theta))
		
		var posy = (starty) * qdy + marg + 40
		var posx = (startx) * qdx + marg 
		
		if (dir):
			startx+=1
			if (startx==qx):
				dir=!dir
				starty+=1
		else:
			startx-=1
			if (startx==0):
				dir=!dir
				starty+=1
		
		
		curve.add_point(Vector2(posx,posy),inVec,-outVec)
#	curve.add_point(Vector2(marg+7,marg),Vector2(mag * cos(120), mag * sin(120)),-Vector2(mag * cos(-90), mag * sin(-90)))
func _draw():
	var points = curve.tesselate(5,4)
	for i in range(1,points.size()):
		draw_line(points[i],points[i-1],Color8((255-(i%255)),i%255,0),2)
func _ready():
	_draw()
	pass
