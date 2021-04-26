extends Area2D
var speed = 350
var velocity = Vector2.ZERO
var acceleration = Vector2.ZERO

func start(_transform,_target):
	global_transform=_transform
	velocity=transform.x*speed
	
func _physics_process(delta):
	velocity+=acceleration*delta
	velocity=velocity.clamped(speed)
	rotation=velocity.angle()
	position+=velocity*delta
