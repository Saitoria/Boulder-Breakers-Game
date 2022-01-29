extends Node2D

onready var admob = $Control/AdMob

func _ready():
	get_node("Control/BCNumber").text = str(ProgressStatistics.bouldercount)
	get_node("Control/GMNumber").text = str(ProgressStatistics.games)
	get_node("Control/PCNumber").text = str(ProgressStatistics.planescount)
	get_node("Control/BUCNumber").text = str(ProgressStatistics.bulletcount)
	get_node("Control/HighScoreTag").text = str(Global.highscore)
	admob.load_banner()
	admob.show_banner()
	pass


func _on_BackButton_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	pass 
