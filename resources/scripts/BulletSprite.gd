extends Sprite

onready var bullet = ["res://resources/Bullets/Bullet .png","res://resources/Bullets/Bullet2.png","res://resources/Bullets/Bullet3.png"]

func _ready():
	if Global.bschosen == 0:
		self.texture = load(bullet[0])
	elif Global.bschosen == 1:
		self.texture = load(bullet[1])
	elif Global.bschosen == 2:
		self.texture = load(bullet[2])
	else:
		self.texture = load(bullet[0])
	pass 
