extends Node2D

onready var admob = $Control/AdMob

var jetskinpopup
var jstoken = 0 
var regionsdescription = ["0 COINS",
"10000 COINS",
"20000 COINS",
"3000 COINS",
"3000 COINS"]

func _ready():
	jetskinpopup = get_tree().get_root().get_node("JetSkins/JetskinsPopup")
	loadAds()
	admob.show_banner()
	pass 

func loadAds() -> void:
	admob.load_banner()
	admob.load_interstitial()
	admob.load_rewarded_video()

func _on_BackButton_pressed():
	get_tree().change_scene("res://Shop.tscn")
	pass 


func _on_HomeButton_pressed():
	admob.show_interstitial()
	get_tree().change_scene("res://MainMenu.tscn")
	pass
	


func _on_GreyBird_pressed():
	jstoken = 0
	jetskinpopup.show()
	get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").hide()
	get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").hide()
	get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").show()
	pass 


func _on_RedDemon_pressed():
	jstoken = 1
	get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").text = regionsdescription[1]
	jetskinpopup.show()
	if Global.coins<=10000 and jstoken==1 and !Global.rdunlocked:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").hide()
	elif Global.coins>=10000 and jstoken==1 and !Global.rdunlocked:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").hide()
	else:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").show()
	pass 


func _on_BlueDragon_pressed():
	jstoken = 2
	get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").text = regionsdescription[2]
	jetskinpopup.show()
	if Global.coins<=20000 and jstoken==2 and !Global.bdunlocked:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").hide()
	elif Global.coins>=20000 and jstoken==2 and !Global.bdunlocked:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").hide()
	else:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").show()
	pass


func _on_RedLaser_pressed():
	jstoken = 3
	jetskinpopup.show()
	get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").hide()
	get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").hide()
	get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").show()
	pass 


func _on_BlueLaser_pressed():
	jstoken = 4
	get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").text = regionsdescription[3]
	jetskinpopup.show()
	if Global.coins<=3000 and jstoken==4 and !Global.bbunlocked:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").hide()
	elif Global.coins>=3000 and jstoken==4 and !Global.bbunlocked:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").hide()
	else:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").show()
	pass


func _on_GreenLaser_pressed():
	jstoken = 5
	get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").text = regionsdescription[4]
	jetskinpopup.show()
	if Global.coins<=3000 and jstoken==5 and !Global.gbunlocked:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").hide()
	elif Global.coins>=3000 and jstoken==5 and !Global.gbunlocked:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").show()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").hide()
	else:
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockButton").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/UnlockLabel").hide()
		get_tree().get_root().get_node("JetSkins/JetskinsPopup/SelectButton").show()
	pass


func _on_CloseButton_pressed():
	jetskinpopup.hide()
	pass


func _on_UnlockButton_pressed():
	if jstoken == 1 :
		Global.coins = Global.coins - 10000
		Global.rdunlocked = true
		ProgressStatistics.planescount += 1
		Global.jschosen = 1
		jetskinpopup.hide()
		
	if jstoken == 2 :
		Global.coins = Global.coins - 20000
		Global.bdunlocked = true
		ProgressStatistics.planescount += 1
		Global.jschosen = 2
		jetskinpopup.hide()
	
	if jstoken == 4 :
		Global.coins = Global.coins - 3000
		Global.bbunlocked = true
		ProgressStatistics.bulletcount += 1
		Global.bschosen = 1
		jetskinpopup.hide()
	
	if jstoken == 5 :
		Global.coins = Global.coins - 3000
		Global.gbunlocked = true
		ProgressStatistics.bulletcount += 1
		Global.bschosen = 2
		jetskinpopup.hide()
	pass 


func _on_SelectButton_pressed():
	if jstoken==0:
		Global.jschosen = 0
		jetskinpopup.hide()
	elif jstoken==1:
		Global.jschosen = 1
		jetskinpopup.hide()
	elif jstoken==3:
		Global.bschosen = 0
		jetskinpopup.hide()
	elif jstoken==4:
		Global.bschosen = 1
		jetskinpopup.hide()
	else:
		Global.bschosen = 2
		jetskinpopup.hide()
	pass 


func _on_GetCoins_pressed():
	Global.iswatchedcoin = true
	admob.show_rewarded_video()
	pass 


func _on_AdMob_rewarded(currency, ammount):
	currency = null
	ammount = null
	if Global.iswatchedcoin:
		Global.coins += 300
		Global.iswatchedcoin = false
	pass # Replace with function body.
