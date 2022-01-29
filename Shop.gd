extends Node2D


func _ready():
	pass 


func _on_BackButton_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	pass 


func _on_Button_pressed():
	get_tree().change_scene("res://JetSkins.tscn")
	pass 
