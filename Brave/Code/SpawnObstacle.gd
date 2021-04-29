extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()
	pass # Replace with function body.


func _on_Timer_timeout():
	var Scene=load("res://Scene/Obstacle.tscn")
	var Obs = Scene.instance()
	#add_child(Obs)
	#Obs.global_position=global_position
	pass # Replace with function body.
