extends Node2D

onready var timer = get_node("Control/Timer")

func _ready():
	timer.set_wait_time(4)
	timer.start()
	
	pass

func _on_Timer_timeout():
	get_tree().change_scene("MainMenu.tscn")
	timer.stop()
	get_tree().get_root().get_node("StartUpLogo").queue_free()
	pass 
