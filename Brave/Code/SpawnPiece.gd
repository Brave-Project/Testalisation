extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var Scene2=load("res://Scene/Piece.tscn")
	var Piece = Scene2.instance()
	add_child(Piece)
	Piece.global_position=global_position
	pass # Replace with function body.
