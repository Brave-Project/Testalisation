extends Area2D

var Vect=Vector2(-300,0)
var Shift=rand_range(-2,2)
var Move=0

func _physics_process(delta):
	if Move==1:
		if (position.y>=125) or (position.y<=-125):
			Shift*=-1
		Vect.y=100*Shift
		$Obstacle.move_and_slide(Vect,Vect)
		position=$Obstacle.position
	pass # Replace with function body.

func _on_Obs_body_shape_entered(body_id, body, body_shape, area_shape):
	if body.name=="Brave":
		VarGlobal.PlayerVie_moins()
	pass # Replace with function body.



func _on_Obs_area_entered(area):
	if area.name=="Bullet" and Move==1:
		area.queue_free()
		queue_free()
		VarGlobal.Score_Plus(500)
		if rand_range(0,5)>=4:
			var Bonus = load("res://Scene/Bonus.tscn")
			var Bon=Bonus.instance()
			get_tree().get_root().add_child(Bon)
			Bon.position=global_position
	pass # Replace with function body.


func _on_VisibilityNotifier2D_screen_entered():
	Move=1
	pass # Replace with function body.


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.
