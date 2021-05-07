extends Node2D

func _physics_process(delta):
	$Camera/Camera2D/Score.Texte="Score "+String(VarGlobal.Score)+"\nVie "+String(VarGlobal.Player.Vie)
	pass
