extends Node
var Argent=200
var Score=0
var Player = {
	Vie=3,
	Speed = 200,
	Degats = 10,
	AttSpeed=1,
	BulSpeed=300,
	Bombes=3,
	Hit=0
}
var level=1
var CameraSpeed=1
var CountSitu=0

func _physics_process(delta):
	if Player.Vie<=0:
		GameOver()
	pass
func Player_reset():
	Player = {
		Vie=3,
		Speed = 200,
		Degats = 10,
		AttSpeed=1,
		BulSpeed=300,
		Bombes=3,
		Hit=0
	}
	pass
	
func get_Argent():
	return Argent
	pass
func Argent_plus1():
	Argent+=1
	pass
func get_CameraSpeed():
	return CameraSpeed
	pass
func PlayerVie_moins():
	if Player.Hit==0:
		Player.Vie-=1
		Player.Hit=1
	pass
func PlayerVie_plus():
	Player.Vie+=1
func Score_Plus(add):
	Score+=add
	pass
func PlayerSpeed_Plus():
	Player.Speed+=20
	pass
func PlayerDegats_Plus():
	Player.Degats+=1
	pass
func PlayerAttSpeed_Plus():
	Player.AttSpeed=Player.AttSpeed*0.9
	pass
func PlayerBulSpeed_Plus():
	Player.BulSpeed+=20
	pass
func PlayerBombes_Plus():
	Player.Bombes+=1
	pass
func CountSitu_Plus():
	CountSitu+=1
	pass
func GameOver():
	get_tree().change_scene("res://Scene/Game_Over.tscn")
	pass
