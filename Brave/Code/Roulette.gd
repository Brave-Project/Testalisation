extends Node2D

var Piece=0
var Chance=0
var TrueChance=8

func _ready():
	VarGlobal.CameraSpeed=0
	pass

func _physics_process(delta):
	$Camera/Camera2D/Score.Texte="Piece "+String(VarGlobal.Argent)
	var DirY = int(Input.is_action_just_pressed("ui_up"))-int(Input.is_action_just_pressed("ui_down"))
	if DirY==1 and (Piece!=VarGlobal.Argent and Piece!=3):
		Piece+=1
		TrueChance-=1
		$FlecheBas.visible=true
	if DirY==-1 and Piece!=0:
		Piece-=1
		TrueChance+=1
		$FlecheHaut.visible=true
	if Piece==0:
		$FlecheBas.visible=false
	if Piece==VarGlobal.Argent and Piece==3:
		$FlecheHaut.visible=false
	
	if Piece!=0:
		Chance=int(float(4)/(TrueChance-1) * 100)
	else:
		Chance=0
	$NbPiece.set_text(String(Piece))
	$Chance.set_text(String(Chance)+"% de Chance")
	if Input.is_action_just_pressed("ui_accept") and Piece!=0:
		var r = int(rand_range(1,TrueChance))
		VarGlobal.Argent-=Piece
		Piece=0
		TrueChance=8
		if r==1:
			$Sprite/Icone.texture=load("res://Image/IconeAttSpeed.png")
			VarGlobal.PlayerAttSpeed_Plus()
		elif r==2:
			$Sprite/Icone.texture=load("res://Image/IconeBulSpeed.png")
			VarGlobal.PlayerBulSpeed_Plus()
		elif r==3:
			$Sprite/Icone.texture=load("res://Image/IconeDegats.png")
			VarGlobal.PlayerDegats_Plus()
		elif r==4:
			$Sprite/Icone.texture=load("res://Image/IconeSpeed.png")
			VarGlobal.PlayerSpeed_Plus()
		else:
			$Sprite/Icone.texture=load("res://Image/IconeRien.png")
		print(VarGlobal.Player)
	pass
	if Input.is_action_just_pressed("ui_right"):
		get_tree().change_scene("res://Scene/Niveau"+String(VarGlobal.level)+".tscn")


func _on_TimerRoll_timeout():
	if $Roll.visible==true:
		$Roll.visible=false
	else:
		$Roll.visible=true
	pass # Replace with function body.
