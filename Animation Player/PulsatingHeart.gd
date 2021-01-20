extends ColorRect

onready var textureButton:TextureButton = $CenterContainer/TextureButton
onready var animationPlayer:AnimationPlayer = textureButton.get_node("AnimationPlayer")


func _on_TextureButton_pressed():
	if animationPlayer.is_playing():
		animationPlayer.stop()
	else:
		animationPlayer.play("Pulsating")


func _on_HSlider_value_changed(value):
	animationPlayer.playback_speed = value
