extends Area2D

export var speed = 300

var velocity = Vector2.ZERO
var acceleration = Vector2.ZERO


func _start(angle):
	velocity.y = angle
	velocity.x= - speed
	pass

func _physics_process(delta):
	#acceleration += seek()
	velocity += acceleration * delta
	velocity = velocity.clamped(speed)
	#rotation = velocity.angle()
	global_position += velocity * delta


func _on_BalleJimmie_body_entered(body):
	if body.name=="Brave":
		VarGlobal.PlayerVie_moins()
	pass # Replace with function body.
