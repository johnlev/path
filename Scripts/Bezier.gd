extends Path2D

var projectResolution=Vector2(Globals.get("display/width"),Globals.get("display/height"))

var curve = self.get_curve() 
var mag = 100
var margin = .50
var marg = 70
var qx = 2
var qy = 9

var qdx = (projectResolution[0]-(marg*2))/(qx)
var qdy = (projectResolution[1]-(marg*2))/(qy)
var points = []

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
	for i in range(qx):
		for j in range(qy):
			points.insert(i+j,Vector2(j*qdx+marg,i*qdy+marg))
	if (false):
		for i in range(qx*qy):
			randomize()
			#		var posx=randf() * (projectResolution[0]-(marg*2)) + marg
			#		var posy=randf() * (projectResolution[0]-(marg*2)) + marg
			#		pos=Vector2(posx,posy)
			
			theta = randf() * 180
			var magn1 = mag #*randf()
			var magn2 = mag #*randf()
			
			var outVec = Vector2(inprev[0]+20,inprev[1])#Vector2(magn1 * cos(theta), magn1 * sin(theta))
			var inVec = Vector2(outprev[0],outprev[1])#Vector2(magn2 * cos(theta), magn2 * sin(theta))
			inprev = inVec 
			outprev = -outVec 
			curve.add_point(points[i],inVec,-inVec)
				
	if (true):
		for i in range(12):
			randomize()
			theta=angles[i]
		#	theta = theta + 180#randf() *360
			# magnitude of angles 
			var magn1 = mag #*randf()
			var magn2 = mag #*randf()
			var inVec = Vector2(magn1 * cos(theta), magn1 * sin(theta))
			var outVec = Vector2(magn2 * cos(theta), magn2 * sin(theta))
			
			var posy = (starty) * qdy + marg
			var posx = (startx) * qdx + marg
			
	#		var posx = randf() * qdx + startx * qdx #randcircle(10,prev)#(projectResolution[0]*margin)+projectResolution[0]*((1-margin)/2)
	#		var posy = randf() * qdy + starty * qdy#prev[1]+10 #(projectResolution[1]*margin)+projectResolution[1]*((1-margin)/2)
	
			print("y:"+ str(starty))
			print("x:"+str(startx))
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
	#		pos=Vector2((randf()*projectResolution[0]*margin)+projectResolution[0]*((1-margin)/2),projectResolution[1]/2)
			#pos = randcircle(30,prev,20,10,10)
			#prev = pos
	#		theta = theta 
			#theta = 90#randf()*50+65
func _draw():
	var points = curve.tesselate(5,4)
	#for i in range(points.size()-1):
		#print(points[i])
	for i in range(1,points.size()-2):
		draw_line(points[i],points[i-1],Color8((255-(i%255)),i%255,0),2)
func _ready():
	_draw()
	pass
func randcircle(radius,center,dis,xdis,ydis):
	var theta = randf()*360
	var mag = (randf()*radius)+dis
	return Vector2(center[0]+cos(theta)*mag+xdis,center[1]+sin(theta)*mag+ydis)
	