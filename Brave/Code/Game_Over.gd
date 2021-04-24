extends Node2D

func _ready():
	#Bdd.Add_Score(VarGlobal.Score)
	VarGlobal.Player.Vie=3
	pass

func _on_Button_pressed():
	VarGlobal.Score=0
	get_tree().change_scene("res://Scene/Niveau"+String(VarGlobal.level)+".tscn")
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_just_released("ui_accept"):
		VarGlobal.Score=0
		get_tree().change_scene("res://Scene/Niveau"+String(VarGlobal.level)+".tscn")
	pass
