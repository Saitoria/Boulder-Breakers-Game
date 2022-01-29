extends RigidBody2D

var coins_sound = preload("res://CoinsSound.tscn")
var  coins_sound_instance = coins_sound.instance()

func _on_Coins_body_entered(body):
	if body.is_in_group("player"):
		get_tree().get_root().add_child(coins_sound_instance)
		Global.coins += 1
		Global.coins_count += 1
		queue_free()
		pass

	if body.is_in_group("end_wall"):
		queue_free()
	pass 
