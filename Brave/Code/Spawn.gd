extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _physics_process(delta):
	if VarGlobal.CameraSpeed==0:
		$Timer.stop()
	elif VarGlobal.CameraSpeed!=0 and $Timer.is_stopped():
		$Timer.start()
	pass

func _on_Timer_timeout():
	var rand = int(rand_range(1,3))
	VarGlobal.CountSitu_Plus()
	if VarGlobal.CountSitu!=10:
		var Situ=load("res://Scene/Situation"+String(rand)+".tscn")
		var Sit=Situ.instance()
		get_tree().get_root().add_child(Sit)
		Sit.global_position=global_position
	else:
		var Situ=load("res://Scene/Boss.tscn")
		VarGlobal.CameraSpeed=0
		var Sit=Situ.instance()
		get_tree().get_root().add_child(Sit)
		Sit.global_position=global_position
		Sit.global_position.x=global_position.x - 400
	pass # Replace with function body.
