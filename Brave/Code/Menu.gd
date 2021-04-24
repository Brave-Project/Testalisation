extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label2/LabelTimer.start()
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_pressed("ui_accept"):
		get_tree().change_scene("res://Scene/Niveau"+String(VarGlobal.level)+".tscn")
	pass

func _on_LabelTimer_timeout():
	if $Label2.visible==true:
		$Label2.visible=false
	else:
		$Label2.visible=true
	pass # Replace with function body.
