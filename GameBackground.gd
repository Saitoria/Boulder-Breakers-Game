extends Sprite

onready var backgroung = ["res://resources/backgrounds/startup.png","res://resources/backgrounds/Icy mountains.png","res://resources/backgrounds/indian_ocean.png","res://resources/backgrounds/rockymountains.png","res://resources/backgrounds/spacejet.jpg"]


func _ready():
	self.texture = load(backgroung[0])
	pass
