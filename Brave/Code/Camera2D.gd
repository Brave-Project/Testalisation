extends Camera2D


func _physics_process(delta):
	position.x+=VarGlobal.get_CameraSpeed()
	pass
