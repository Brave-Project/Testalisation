extends Area2D
var Balle = preload("res://Scene/BalleBoss.tscn")
var Pv = 300
var maxPv = 300
var angle = 110
var shift = 1
var Shift=1
var Vect=Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _physics_process(delta):
	$LifeBarre.scale.x=float(Pv)/float(300)
	if (position.y>=60) or (position.y<=-60):
		Shift*=-1
	Vect.y+=Shift
	position=Vect
	print(position)
	pass # Replace with function body.

func _on_Timer_timeout():
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
	pass # Replace with function body.
