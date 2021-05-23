extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Score.text=String(VarGlobal.Score)
	pass # Replace with function body.
func _physics_process(delta):
	pass



func _on_Button_pressed():
	Bdd.Add_Score(VarGlobal.Score,$Champ.text)
	get_tree().change_scene("res://Scene/Game_Over.tscn")
	pass # Replace with function body.
