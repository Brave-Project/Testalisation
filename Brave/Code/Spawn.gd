extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var rand = int(rand_range(1,3))
	var Situ=load("res://Scene/Situation"+String(rand)+".tscn")
	var Sit=Situ.instance()
	get_tree().get_root().add_child(Sit)
	Sit.global_position=global_position
	pass # Replace with function body.
