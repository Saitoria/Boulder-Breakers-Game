extends KinematicBody2D

var bullet = preload("res://Bullet.tscn")

export var bullet_speed = 5000
export var can_fire = true
onready var timer = get_node("Timer")
onready var bulletsoundplayer = AudioStreamPlayer.new()

func _ready():
	timer.set_wait_time(0.05)
	timer.start()
	self.add_child(bulletsoundplayer)
	bulletsoundplayer.stream = load("res://resources/sounds/shootingsound.wav")
	bulletsoundplayer.volume_db = -15
	pass

func _on_Timer_timeout():
	can_fire = true
	pass 

func _input(event):
	if event is InputEventScreenDrag:
		#self.translate(event.relative)
		self.move_and_collide(Vector2(event.relative.x,event.relative.y))
		pass

	if event is InputEventScreenTouch and can_fire:
		if ProgressStatistics.sound_mute:
			bulletsoundplayer.stop()
		else:
			bulletsoundplayer.play()
		var bullet_instance = bullet.instance()
		bullet_instance.position = $BulletPoint.get_global_position()
		bullet_instance.apply_impulse(Vector2(),Vector2(bullet_speed,0))
		get_tree().get_root().add_child(bullet_instance)
		can_fire = false


 



