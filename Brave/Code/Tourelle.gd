extends Area2D
var Balle = preload("res://Scene/BalleTourelle.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Timer_timeout():
	var Bal=Balle.instance()
	get_tree().get_root().add_child(Bal)
	Bal.global_position=global_position
	pass # Replace with function body.
