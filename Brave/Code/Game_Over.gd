extends Node2D

func _ready():
	#Bdd.Add_Score(VarGlobal.Score)
	VarGlobal.Player.Vie=3
	pass

func _on_Button_pressed():
	VarGlobal.Score=0
	get_tree().change_scene("res://Scene/Game.tscn")
	pass # Replace with function body.
