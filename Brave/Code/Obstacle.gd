extends Area2D

var Vect=Vector2(-300,0)
var Shift=rand_range(-2,2)
# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()
	pass # Replace with function body.
func _physics_process(delta):
	if (position.y>=125) or (position.y<=-125):
		Shift*=-1
	Vect.y=100*Shift
	$Obstacle.move_and_slide(Vect,Vect)
	position=$Obstacle.position
	pass

func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.

func _on_Obs_body_shape_entered(body_id, body, body_shape, area_shape):
	if body.name=="Brave":
		VarGlobal.PlayerVie_moins()
	pass # Replace with function body.
