extends Sprite


onready var player = ["res://resources/jets/jet1.png","res://resources/jets/jet3.png","res://resources/jets/jet4.png"]

func _ready():
	if Global.jschosen == 0:
		self.texture = load(player[0])
	elif Global.jschosen == 1:
		self.texture = load(player[1])
	elif Global.jschosen == 2:
		self.texture = load(player[2])
	else:
		self.texture = load(player[0])
	pass 
