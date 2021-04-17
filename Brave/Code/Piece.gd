extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Piece_body_shape_entered(body_id, body, body_shape, area_shape):
	if body.name=="Brave":
		queue_free()
		VarGlobal.Argent_plus1()
		VarGlobal.Score_Plus(2000)
	pass # Replace with function body.
