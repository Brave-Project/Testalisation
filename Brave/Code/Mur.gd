extends Area2D


func _on_Mur_body_entered(body):
	if body.name=="Brave":
		VarGlobal.PlayerVie_moins()
	pass # Replace with function body.
