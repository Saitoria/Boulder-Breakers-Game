extends TextureButton

var on_image = preload("res://resources/icon/musicOn.png")
var off_image = preload("res://resources/icon/musicOff.png")

func _ready():
	if ProgressStatistics.music_mute == false:
		texture_normal = on_image
	else:
		texture_normal = off_image
	pass 

func _on_TextureButton_pressed():
	if texture_normal == on_image:
		texture_normal = off_image
	else:
		texture_normal = on_image
	if ProgressStatistics.music_mute == false:
		ProgressStatistics.music_mute = true
	else:
		ProgressStatistics.music_mute = false
	pass 
