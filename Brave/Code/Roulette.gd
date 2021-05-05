extends Node2D

var Piece=0
var Chance=0
# Declare member variables here. Examples:

func _physics_process(delta):
	$Camera/Camera2D/Score.Texte="Piece "+String(VarGlobal.Argent)
	var DirY = int(Input.is_action_just_pressed("ui_up"))-int(Input.is_action_just_pressed("ui_down"))
	if DirY==1 and (Piece!=VarGlobal.Argent and Piece!=6):
		Piece+=1
		$FlecheBas.visible=true
	if DirY==-1 and Piece!=0:
		Piece-=1
		$FlecheHaut.visible=true
	if Piece==0:
		$FlecheBas.visible=false
	if Piece==VarGlobal.Argent and Piece!=6:
		$FlecheHaut.visible=false
	
	if Piece!=0:
		Chance=int(float(Piece)/6 * 100)
	else:
		Chance=0
	$NbPiece.set_text(String(Piece))
	$Chance.set_text(String(Chance)+"% de Chance")
	
	pass


func _on_TimerRoll_timeout():
	if $Roll.visible==true:
		$Roll.visible=false
	else:
		$Roll.visible=true
	pass # Replace with function body.
