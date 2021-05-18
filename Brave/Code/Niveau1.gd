extends Node2D
func _ready():
	VarGlobal.CameraSpeed=0
	pass

func _physics_process(delta):
	VarGlobal.Score_Plus(1)
	$Camera/Camera2D/Score.Texte="Score "+String(VarGlobal.Score)+"\nVie "+String(VarGlobal.Player.Vie)
	pass
