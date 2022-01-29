extends Node


var boulder = preload("res://Boulder1.tscn") 
var boulder2 = preload("res://Boulder2.tscn") 
var boulder3 = preload("res://Boulder3.tscn") 
var coins = preload("res://Coins.tscn")
var rng = RandomNumberGenerator.new()
var rng2 = RandomNumberGenerator.new()
var rng3 = RandomNumberGenerator.new()
export var boulder_speed = -300
export var move_rate = 0.3
export var can_move = true
export var can_coin_move = true
onready var timer = get_node("Control/Timer")
onready var bouldertimer = get_node("Control/BoulderTimer")

onready var admob = $Control/AdMob

func _ready():
	admob.hide_banner()
	timer.set_wait_time(move_rate)
	timer.start()
	bouldertimer .set_wait_time(5)
	bouldertimer .start()
	var audioplayer = AudioStreamPlayer.new()
	self.add_child(audioplayer)
	audioplayer.stream = load("res://resources/sounds/moonlit_rabbits_midnight_periapsis.ogg")
	audioplayer.volume_db = -5
	if Global.isDead or ProgressStatistics.music_mute:
		audioplayer.stop()
	else:
		audioplayer.play()


func _on_Timer_timeout():
	can_move = true
	pass 

func _on_BoulderTimer_timeout():
	if Global.isRevived:
		boulder_speed -= 100
	else:
		boulder_speed -= 50
	pass 

func _process(delta):
	print(can_move)
	if Global.isDead==false:
		rng.randomize()
		rng2.randomize()
		rng3.randomize()
		var coinrandNo = rng3.randf_range(0.2, 0.8)
		var randNo = rng.randf_range(0.2, 0.8)
		var chooser = rng2.randi_range(1, 3)
		var  boulder_instance = boulder.instance()
		var  boulder_instance2 = boulder2.instance()
		var  boulder_instance3 = boulder3.instance()
		var coin_instance = coins.instance()

		if can_move:
			if chooser ==1:
				boulder_instance.position = Vector2(get_viewport().size.x,get_viewport().size.y*randNo)
				boulder_instance.apply_impulse(Vector2(),Vector2(boulder_speed,0))
				get_tree().get_root().add_child(boulder_instance)


			elif chooser ==2:
				boulder_instance2.position = Vector2(get_viewport().size.x,get_viewport().size.y*randNo)
				boulder_instance2.apply_impulse(Vector2(),Vector2(boulder_speed,0))
				get_tree().get_root().add_child(boulder_instance2)

			else:
				boulder_instance3.position = Vector2(get_viewport().size.x,get_viewport().size.y*randNo)
				boulder_instance3.apply_impulse(Vector2(),Vector2(boulder_speed,0))
				get_tree().get_root().add_child(boulder_instance3)

			can_move = false
		
		if can_coin_move:
				coin_instance.position = Vector2(get_viewport().size.x,get_viewport().size.y*coinrandNo)
				coin_instance.apply_impulse(Vector2(),Vector2(-300,0))
				get_tree().get_root().add_child(coin_instance)
				can_coin_move = false
				yield(get_tree().create_timer(0.5),"timeout")
				can_coin_move = true

	else:
		var enemies = get_tree().get_nodes_in_group("boulder")
		for enemy in enemies:
			enemy.queue_free()

		var coins = get_tree().get_nodes_in_group("coins")
		for coin in coins:
			coin.queue_free()
			
		if Global.isRevived and Global.isDead:
			get_tree().get_root().get_node("GamePlay").queue_free()
			get_tree().change_scene("res://GameOver.tscn")
		else:
			get_tree().change_scene("res://GameOver.tscn")
	pass


func _on_PauseButton_pressed():
	if get_tree().paused==false:
		get_tree().paused=true
		get_tree().get_root().get_node("GamePlay/PauseButton/PauseLabel").show()
	else:
		get_tree().paused=false
		get_tree().get_root().get_node("GamePlay/PauseButton/PauseLabel").hide()
	pass 
