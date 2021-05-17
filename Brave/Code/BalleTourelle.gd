extends Area2D

export var speed = 200
export var steer_force = 200000

var velocity = Vector2.ZERO
var acceleration = Vector2.ZERO
onready var target = get_node("/root/Niveau1/Player/Brave")

func start(_transform):
	global_transform = _transform
	velocity = transform.x * speed
	rotation = velocity.angle()
	acceleration=seek()
	pass
	
func seek():
	var steer = Vector2.ZERO
	if target:
		steer = (target.position - position).normalized() * steer_force
		
	return steer

func _physics_process(delta):
	#acceleration += seek()
	velocity += acceleration * delta
	velocity = velocity.clamped(speed)
	#rotation = velocity.angle()
	velocity.x+=60*VarGlobal.CameraSpeed
	global_position += velocity * delta


func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.


func _on_BalleTourelle_body_entered(body):
	if body.name=="Brave":
		VarGlobal.PlayerVie_moins()
	pass # Replace with function body.
