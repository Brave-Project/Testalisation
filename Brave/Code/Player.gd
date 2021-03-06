extends KinematicBody2D
var vel=Vector2()
var speed
var bullet = preload("res://Scene/Bullet.tscn")
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	$Timer.wait_time=VarGlobal.Player.AttSpeed
	speed = VarGlobal.Player.Speed
	if VarGlobal.Player.Hit==1:
		if $Hit.is_stopped():
			$Hit.start()
		if $Sprite.visible==true:
			$Sprite.visible=false
		else:
			$Sprite.visible=true
	if (Input.is_action_pressed("ui_accept")):
		Shoot()
	_MovementLoop()

	pass
func _MovementLoop():
	var DirX = int(Input.is_action_pressed("ui_right"))-int(Input.is_action_pressed("ui_left"))
	var DirY = int(Input.is_action_pressed("ui_up"))-int(Input.is_action_pressed("ui_down"))

	if (DirX==1):
		vel.x=speed
	elif (DirX==-1):
		vel.x=-speed
	else: 
		vel.x=0
	if (DirY==1):
		vel.y=-speed
	elif (DirY==-1):
		vel.y=+speed
	else: 
		vel.y=0
	vel.x+=60*VarGlobal.CameraSpeed
	move_and_slide(vel,vel)
	pass
func Shoot():
	if $Timer.is_stopped():
		var Bul=bullet.instance()
		get_tree().get_root().add_child(Bul)
		Bul.global_position=$Tir.global_position
		$Timer.start()
pass


func _on_Hit_timeout():
	VarGlobal.Player.Hit=0
	$Sprite.visible=true
	pass # Replace with function body.
