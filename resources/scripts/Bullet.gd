extends RigidBody2D

var explosion = preload("res://Explosion.tscn")
var explosion_sound = preload("res://ExplosionSound.tscn")
var  explosion_sound_instance = explosion_sound.instance()

func _on_Bullet_body_entered(body):
	if body.is_in_group("boulder"):
		get_tree().get_root().add_child(explosion_sound_instance)
		var explosion_instance = explosion.instance()
		explosion_instance.position = get_global_position()
		get_tree().get_root().add_child(explosion_instance)
		queue_free()
		if Global.points>Global.highscore:
			Global.highscore = Global.points
		pass

	if body.is_in_group("boulder1"):
		Global.points += 2
		pass

	if body.is_in_group("boulder2"):
		Global.points += 3
		pass

	if body.is_in_group("boulder3"):
		Global.points += 5
		pass
		
	if body.is_in_group("start_wall"):
		queue_free()
		pass


