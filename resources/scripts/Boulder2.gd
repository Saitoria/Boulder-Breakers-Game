extends RigidBody2D


func _on_Boulder2_body_entered(body):
	if !body.is_in_group("boulder") and !body.is_in_group("wall"):
		queue_free()
	if body.is_in_group("end_wall") or body.is_in_group("player"):
		Global.isDead = true
