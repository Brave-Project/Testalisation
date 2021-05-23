extends Node2D
var Shift=5
func _ready():
	VarGlobal.Player.Vie=3
	pass

func _physics_process(delta):
	if Input.is_action_just_released("ui_accept"):
		if $Choix.position.y==288:
			get_tree().change_scene("res://Scene/Score.tscn")
		elif $Choix.position.y==352:
			VarGlobal.Score=0
			get_tree().change_scene("res://Scene/Niveau"+String(VarGlobal.level)+".tscn")
		else:
			get_tree().quit()
			
	if Input.is_action_just_pressed("ui_down") and $Choix.position.y!=416:
		$Choix.position.y+=64
	elif Input.is_action_just_pressed("ui_up") and $Choix.position.y!=288:
		$Choix.position.y-=64
	pass


func _on_Timer_timeout():
	$Choix.position.x+=Shift
	Shift=Shift*-1
	$Choix/Timer.start()
	pass # Replace with function body.
