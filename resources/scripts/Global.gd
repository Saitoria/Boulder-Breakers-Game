extends Node


var points = 0
var coins_count = 0
var highscore = 100000 setget set_highscore
var coins = 100000 setget set_coins
var rdunlocked = false setget set_rdunlocked
var bdunlocked = false setget set_bdunlocked
var bbunlocked = false setget set_bbunlocked
var gbunlocked = false setget set_gbunlocked
var jschosen = 0 setget set_jschosen
var bschosen = 0 setget set_bschosen
const filepath = "user://highscore.dat"
var isDead = false
var isRevived = false
var iswatchedcoin = false


func _ready():
	load_highscore()
	pass

func load_highscore():
	var file = File.new()
	if not file.file_exists(filepath): return
	file.open(filepath, File.READ)
	highscore = file.get_var()
	coins = file.get_var()
	rdunlocked = file.get_var()
	bdunlocked = file.get_var()
	bbunlocked = file.get_var()
	gbunlocked = file.get_var()
	jschosen = file.get_var()
	bschosen = file.get_var()
	file.close()
	pass

func save_highscore():
	var file = File.new()
	file.open(filepath, File.WRITE)
	file.store_var(highscore)
	file.store_var(coins)
	file.store_var(rdunlocked)
	file.store_var(bdunlocked)
	file.store_var(bbunlocked)
	file.store_var(gbunlocked)
	file.store_var(jschosen)
	file.store_var(bschosen)
	file.close()
	pass

func set_highscore(new_value):
	highscore = new_value
	save_highscore()
	pass

func set_coins(new_value):
	coins = new_value
	save_highscore()
	pass

func set_rdunlocked(new_value):
	rdunlocked = new_value
	save_highscore()
	pass

func set_bdunlocked(new_value):
	bdunlocked = new_value
	save_highscore()
	pass

func set_bbunlocked(new_value):
	bbunlocked = new_value
	save_highscore()
	pass

func set_gbunlocked(new_value):
	gbunlocked = new_value
	save_highscore()
	pass

func set_jschosen(new_value):
	jschosen = new_value
	save_highscore()
	pass

func set_bschosen(new_value):
	bschosen = new_value
	save_highscore()
	pass
