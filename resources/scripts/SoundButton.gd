extends TextureButton

var on_image = preload("res://resources/icon/soundOn.png")
var off_image = preload("res://resources/icon/soundOff.png")

func _ready():
	if ProgressStatistics.sound_mute == false:
		texture_normal = on_image
	else:
		texture_normal = off_image
	pass 

func _on_SoundButton_pressed():
	if texture_normal == on_image:
		texture_normal = off_image
	else:
		texture_normal = on_image
		
	if ProgressStatistics.sound_mute == false:
		ProgressStatistics.sound_mute = true
	else:
		ProgressStatistics.sound_mute = false
	pass 
