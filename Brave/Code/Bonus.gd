extends Area2D

var rand =int(rand_range(0,6))*32
# Called when the node enters the scene tree for the first time.
func _ready():
	rand =int(rand_range(0,6))*32
	print(rand)
	$Sprite.region_rect=Rect2(0,rand,32,32)
	pass # Replace with function body.

func _physics_process(delta):
	
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
