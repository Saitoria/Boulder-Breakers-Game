extends Node2D

var admob = null
var isTop = false
var isReal = false
var adBanner = 'ca-app-pub-3940256099942544/6300978111'
var adInterstitial = 'ca-app-pub-3940256099942544/1033173712'
var adRewarded = 'ca-app-pub-3940256099942544/5224354917'

func _ready():
	if Engine.has_singleton('AdMob'):
		admob =  Engine.get_singleton('AdMob')
		admob.init(isReal,get_instance_id())
		loadBanner()
		loadInterstitial()
		loadRewardedVideo()
#		admob.showBanner()
#		admob.resize()
	

func loadBanner():
	if admob != null:
		admob.loadBanner(adBanner, isTop)
		admob.showBanner()
		admob.resize()

func loadInterstitial():
	if admob != null:
		admob.loadInterstitial(adInterstitial)

func loadRewardedVideo():
	if admob != null:
		admob.loadRewardedVideo(adRewarded)

func _on_rewarded_video_ad_closed():
	if Global.isRevived:
		get_tree().change_scene("res://GamePlay.tscn")
	if Global.iswatchedcoin:
		Global.coins += 300
	admob.loadRewardedVideo(adRewarded)
