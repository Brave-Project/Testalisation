extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var Scene2=load("res://Scene/Tourelle.tscn")
	var Tour = Scene2.instance()
	add_child(Tour)
	Tour.global_position=global_position
	pass # Replace with function body.
