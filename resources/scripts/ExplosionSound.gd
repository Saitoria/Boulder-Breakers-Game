extends AudioStreamPlayer


func _ready():
	var audioplayer = AudioStreamPlayer.new()
	self.add_child(audioplayer)
	audioplayer.stream = load("res://resources/sounds/explosionsound.wav")
	audioplayer.volume_db = -25
	if !ProgressStatistics.sound_mute:
		audioplayer.play()
	else:
		audioplayer.stop()
	pass
