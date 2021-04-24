extends Node2D
# Declare member variables here. Examples:
func _ready():
	var Scene=load("res://Scene/Player.tscn")
	var Play = Scene.instance()
	add_child(Play)
	pass # Replace with function body.
