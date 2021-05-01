extends Area2D
var Balle = preload("res://Scene/BalleTourelle.tscn")
var tir=0

func _ready():
	pass # Replace with function body.

func _on_Timer_timeout():
	if tir==1:
		var Bal=Balle.instance()
		get_tree().get_root().add_child(Bal)
		Bal.start(global_transform)
	pass # Replace with function body.


func _on_Tourelle_area_entered(area):
	if area.name=="Bullet":
		area.queue_free()
		queue_free()
		VarGlobal.Score_Plus(1000)
	pass # Replace with function body.


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.


func _on_VisibilityNotifier2D_screen_entered():
	tir=1
	pass # Replace with function body.
