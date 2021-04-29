extends Area2D

export var speed = 350
export var steer_force = 200000

var velocity = Vector2.ZERO
var acceleration = Vector2.ZERO
onready var target = get_node("/root/Niveau1/Player/Brave")
onready var _transform = get_node("/root/Niveau1")



func _ready():
	global_transform = _transform.transform
	print(_transform.global_transform)
	velocity = global_transform.x * speed
	rotation = velocity.angle()
	acceleration=seek()
	pass
func seek():
	var steer = Vector2.ZERO
	if target:
		steer = (target.global_position - position).normalized() * steer_force
		
	return steer

func _physics_process(delta):
	#acceleration += seek()
	velocity += acceleration * delta
	velocity = velocity.clamped(speed)
	#rotation = velocity.angle()
	global_position += velocity * delta
