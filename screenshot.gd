extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Screenshot"):
		get_viewport().get_texture().get_image().save_exr(".exr")
