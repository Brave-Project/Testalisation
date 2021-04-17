extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var Scene2=load("res://Scene/Piece.tscn")
	var Piece = Scene2.instance()
	add_child(Piece)
	Piece.global_position=global_position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
