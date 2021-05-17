extends Area2D
var Balle = preload("res://Scene/BalleJimmie.tscn")
var Pv = 300
var maxPv = 300
var phase = 1
var angle = 110
var shift = 1
var Shift2=rand_range(0,20)

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	if 2*Pv >= maxPv/3:
		phase = 1
	if Pv >= maxPv/3:
		phase = 1
	if Pv <= maxPv/3:
		phase = 3
	pass # Replace with function body.

func _on_Timer_timeout():
	if phase == 1:
		$Timer.wait_time = 0.5
		Shift2=rand_range(0,20)
		if angle >= 120 or angle <= -120 or Shift2 >=19 : 
			shift*=-1
			angle +=5
		$Timer.wait_time+=shift*0.20
		print (Pv)
		angle += 30*shift
		var Bal1=Balle.instance()
		Bal1._start(angle)
		get_tree().get_root().add_child(Bal1)
		Bal1.global_position=global_position	
	if phase == 2:
		var Bal2=Balle.instance()
		get_tree().get_root().add_child(Bal2)
		Bal2.global_position=global_position
	if phase == 3:
		var Bal3=Balle.instance()
		get_tree().get_root().add_child(Bal3)
		Bal3.global_position=global_position
	pass # Replace with function body.
	

func _phase2():
	
	pass
	
func _phase3():
	
	pass


func _on_Jimmie_area_entered(area):
	if area.name=="Bullet":
		Pv-= VarGlobal.Player.Degats
	pass # Replace with function body.
