extends Area2D

var speed

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()
	pass # Replace with function body.

func _physics_process(delta):
	speed=VarGlobal.Player.BulSpeed
	position.x+=delta*speed
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.


func _on_Bullet_area_shape_entered(area_id, area, area_shape, self_shape):
	if area.name!="Piece":
		area.queue_free()
		VarGlobal.Score_Plus(500)
	if area.name=="Boss":
		print("This is not suppose to happen")
		VarGlobal.HitBoss()
		VarGlobal.Score_Plus(1000)
	pass # Replace with function body.


