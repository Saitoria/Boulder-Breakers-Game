extends Sprite

onready var backgroung = ["res://resources/backgrounds/startup.png",
"res://resources/backgrounds/indian_ocean.png",
"res://resources/backgrounds/rockymountains.png",
"res://resources/backgrounds/spacejet.png",
"res://resources/backgrounds/zebramountain.png",
"res://resources/backgrounds/grasslands.png",
"res://resources/backgrounds/city.jpg",
"res://resources/backgrounds/warzone.png",
"res://resources/backgrounds/desert.png",
"res://resources/backgrounds/mountainwoodsmorning.jpg",
"res://resources/backgrounds/mountainwoodsevening.png",
"res://resources/backgrounds/mountainwoodsnight.jpg",
"res://resources/backgrounds/sunset_forest.png"]


func _ready():
	self.texture = load(backgroung[ProgressStatistics.backgroundchosen])
	pass
