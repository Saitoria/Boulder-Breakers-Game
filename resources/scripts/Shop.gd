extends Node2D

var regionpopup
var token = 0
var regionsdescription = ["Install the game",
"Play 3 games",
"Play 20 games",
"Play 100 games",
"Get a highscore of 1000",
"Get a highscore of 1500",
"Get a highscore of 2000",
"Get a highscore of 5000",
"Break 1000 balls",
"Break 10000 balls",
"Break 100000 balls",
"Unlock more than 1 \n bullet skin",
"Unlock more than 1 \n  jet skin"
]
func _ready():
	regionpopup = get_tree().get_root().get_node("Shop/RegionsPopup")
	pass 


func _on_BackButton_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	pass 


func _on_Button_pressed():
	get_tree().change_scene("res://JetSkins.tscn")
	pass 

func _on_Startup_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[0]
	token = 0
	get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass 

func _on_IndianOcean_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[1]
	token = 1
	if ProgressStatistics.games<3 and token == 1:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass 

func _on_RokyMountains_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[2]
	token = 2
	if ProgressStatistics.games<20 and token == 2:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass 

func _on_SpaceJet_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[3]
	token = 3
	if ProgressStatistics.games<100 and token == 3:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass 

func _on_ZebraMountain_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[4]
	token = 4
	if Global.highscore<1000 and token == 4:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass

func _on_GrassLands_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[5]
	token = 5
	if Global.highscore<1500 and token == 5:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass 

func _on_BlackCity_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[6]
	token = 6
	if Global.highscore<2000 and token == 6:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass 

func _on_WarZone_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[7]
	token = 7
	if Global.highscore<5000 and token == 7:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass

func _on_Desert_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[8]
	token = 8
	if ProgressStatistics.bouldercount<1000 and token == 8:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass 

func _on_MountainWoodsM_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[9]
	token = 9
	if ProgressStatistics.bouldercount<10000 and token == 9:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass 

func _on_MountainWoodsE_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[10]
	token = 10
	if ProgressStatistics.bouldercount<100000 and token == 10:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass 

func _on_MountainWoodsN_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[11]
	token = 11
	if ProgressStatistics.bulletcount<2 and token == 11:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass 

func _on_SunsetForest_pressed():
	regionpopup.show()
	get_tree().get_root().get_node("Shop/RegionsPopup/Description").text = regionsdescription[12]
	token = 12
	if ProgressStatistics.planescount<2 and token == 12:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").hide()
	else:
		get_tree().get_root().get_node("Shop/RegionsPopup/EquipButton").show()
	pass 

func _on_CloseButton_pressed():
	regionpopup.hide()
	pass 


func _on_EquipButton_pressed():
	ProgressStatistics.backgroundchosen = token
	regionpopup.hide()
	pass 
