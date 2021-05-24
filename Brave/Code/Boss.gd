extends Area2D
var Balle = preload("res://Scene/BalleBoss.tscn")
var Pv = 300
var maxPv = 300
var angle = 110
var shift = 1
var Shift=1
var Vect=Vector2.ZERO
var Phase=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _physics_process(delta):
	$LifeBarre.scale.x=float(Pv)/float(150)
	if ((position.y>=60) or (position.y<=-60)):
		Shift*=-1
	Vect.y=Shift
	if position.x!=0 and $TimerTotalPhase2.is_stopped():
		Vect.x=-1
	elif $TimerTotalPhase2.is_stopped():
		Vect.x=0
	else:
		Vect.y=0
	position+=Vect
	if Phase==1:
		Phase1()
	elif Phase==2:
		Phase2()
	pass # Replace with function body.
func Phase1():
	Phase=0
	$TimerPhase1.start()
	$TimerTotalPhase1.start()
	pass
func Phase2():
	Phase=0
	$Sprite.region_rect=Rect2(0,64,64,64)
	$TimerPhase2.start()
	$TimerTotalPhase2.start()
	pass


func _on_TimerPhase1_timeout():
	if angle >= 120 or angle <= -120 : 
		shift*=-1
		angle +=5
	angle += 30*shift
	var Bal1=Balle.instance()
	Bal1._start(angle)
	get_tree().get_root().add_child(Bal1)
	Bal1.global_position=global_position	
	pass # Replace with function body.

func _on_Jimmie_area_entered(area):
	if area.name=="Bullet":
		Pv-= VarGlobal.Player.Degats
		VarGlobal.Score_Plus(1000)
	if Pv <=0:
		VarGlobal.CameraSpeed=1
		VarGlobal.CountSitu=0
		queue_free()
	pass # Replace with function body.


func _on_TimerTotalPhase1_timeout():
	$TimerPhase1.stop()
	$TimerTotalPhase1.stop()
	$TimerPhase.start()
	pass # Replace with function body.


func _on_TimerPhase2_timeout():
	if position.x!=0:
		position.x=100
		position.y=rand_range(-120,120)
	Vect.x=-15
	pass # Replace with function body.

func _on_TimerTotalPhase2_timeout():
	position.y=0
	position.x=100
	$Sprite.region_rect=Rect2(0,0,64,64)
	$TimerPhase2.stop()
	$TimerTotalPhase2.stop()
	$TimerPhase.start()
	pass # Replace with function body.


func _on_Jimmie_body_entered(body):
	if body.name=="Brave":
		VarGlobal.PlayerVie_moins()
	pass # Replace with function body.

func _on_TimerPhase_timeout():
	Phase=int(rand_range(1,3))
	$TimerPhase.stop()
	pass # Replace with function body.
