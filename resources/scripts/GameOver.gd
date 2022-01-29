extends Node2D

onready var admob = $Control/AdMob

func _ready():
	loadAds()
	admob.show_banner()
	if Global.points>Global.highscore:
		get_tree().get_root().get_node("GameOver/Control/HighScoreSprite").show()
	else:
		get_tree().get_root().get_node("GameOver/Control/HighScoreSprite").hide()
	pass 

func loadAds() -> void:
	admob.load_banner()
	admob.load_interstitial()
	admob.load_rewarded_video()

func _on_Button_pressed():
	Global.isDead=false
	Global.isRevived= false
	Global.coins_count = 0
	get_tree().change_scene("res://MainMenu.tscn")
	pass


func _on_AdMob_rewarded_video_loaded():
	if Global.isRevived == false:
		get_tree().get_root().get_node("GameOver/Control/Admob").show()
	else:
		get_tree().get_root().get_node("GameOver/Control/Admob").hide()
	pass # Replace with function body.
	
	
func _on_Admob_pressed():
	admob.show_rewarded_video()
	pass 


func _on_AdMob_rewarded_video_closed():
	get_tree().get_root().get_node("GameOver/Control/Admob").hide()
	pass 

func _on_AdMob_rewarded(currency, ammount):
	currency = null
	ammount = null
	Global.isDead = false
	Global.isRevived = true
	yield(get_tree().create_timer(1),"timeout")
	get_tree().change_scene("res://GamePlay.tscn")
	pass 
