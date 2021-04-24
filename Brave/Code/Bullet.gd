extends Area2D

var speed

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()
	pass # Replace with function body.

func _physics_process(delta):
	speed=VarGlobal.Player.BulSpeed
	speed+=VarGlobal.CameraSpeed*60
	position.x+=delta*speed
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.


