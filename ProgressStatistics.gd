extends Node


onready var games = 20000 setget set_games
onready var bouldercount = 20000 setget set_bouldercount
onready var planescount = 7 setget set_planescount
onready var bulletcount = 7 setget set_bulletcount
onready var backgroundchosen = 0 setget set_background
const filepath = "user://statistics.dat"
var music_mute = false setget set_music
var sound_mute = false setget set_sound

func _ready():
	load_statistics()
	pass

func load_statistics():
	var file = File.new()
	if not file.file_exists(filepath): return
	file.open(filepath, File.READ)
	games = file.get_var()
	bouldercount = file.get_var()
	planescount = file.get_var()
	bulletcount = file.get_var()
	backgroundchosen = file.get_var()
	music_mute = file.get_var()
	sound_mute = file.get_var()
	file.close()
	pass

func save_statistics():
	var file = File.new()
	file.open(filepath, File.WRITE)
	file.store_var(games)
	file.store_var(bouldercount)
	file.store_var(planescount)
	file.store_var(bulletcount)
	file.store_var(backgroundchosen)
	file.store_var(music_mute)
	file.store_var(sound_mute)
	file.close()
	pass

#watch out
func set_games(new_value):
	games = new_value
	save_statistics()
	pass

func set_bouldercount(new_value):
	bouldercount = new_value
	save_statistics()
	pass

func set_planescount(new_value):
	planescount = new_value
	save_statistics()
	pass

func set_bulletcount(new_value):
	bulletcount = new_value
	save_statistics()
	pass

func set_background(new_value):
	backgroundchosen = new_value
	save_statistics()
	pass

func set_music(new_value):
	music_mute = new_value
	save_statistics()
	pass

func set_sound(new_value):
	sound_mute = new_value
	save_statistics()
	pass
