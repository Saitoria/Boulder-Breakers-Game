extends Node2D

onready var admob = $Control/AdMob

var settingspopup

func _ready():
	settingspopup = get_tree().get_root().get_node("MainMenu/PopupMenu")
	loadAds()
	admob.show_banner()
	pass 

func loadAds() -> void:
	admob.load_banner()
	admob.load_interstitial()
	admob.load_rewarded_video()
	pass


func _on_PlayButton_pressed():
	Global.isDead = false
	Global.isRevived = false
	Global.coins_count = 0
	Global.points = 0 
	ProgressStatistics.games += 1
	get_tree().change_scene('res://GamePlay.tscn')
	pass


func _on_ShopButton_pressed():
	admob.show_interstitial()
	get_tree().change_scene('res://Shop.tscn')
	pass


func _on_StatsButton_pressed():
	admob.show_interstitial()
	get_tree().change_scene("res://Statistics.tscn")
	pass 

func _on_SettingsButton_pressed():
	settingspopup.show()
	pass 
	
func _on_CloseButton_pressed():
	settingspopup.hide()
	pass


func _on_SoundButton_pressed():
	if ProgressStatistics.sound_mute == false:
		ProgressStatistics.sound_mute = true
	else:
		ProgressStatistics.sound_mute = false
	pass



func _on_AdMob_interstitial_closed():
	admob.load_interstitial()
	pass # Replace with function body.
