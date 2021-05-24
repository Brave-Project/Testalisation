extends Area2D
var rand
# Called when the node enters the scene tree for the first time.
func _ready():
	if VarGlobal.Player.Vie==3:
		rand =int(rand_range(0,5))*32
	else:
		rand =int(rand_range(0,6))*32
	$Sprite.region_rect=Rect2(0,rand,32,32)
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_Bonus_body_entered(body):
	if body.name=="Brave":
		queue_free()
		if rand==0:
			VarGlobal.PlayerAttSpeed_Plus()
		elif rand==32:
			VarGlobal.PlayerBulSpeed_Plus()
		elif rand==64:
			VarGlobal.PlayerDegats_Plus()
		elif rand==96:
			VarGlobal.PlayerSpeed_Plus()
		elif rand==128:
			VarGlobal.PlayerVie_plus()
	pass # Replace with function body.
