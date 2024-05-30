extends RigidBody2D

var rotationSpeed = 100

func _physics_process(delta):
	rotateToTarget(get_node("/root/Node2D/Player"), delta)
	
func rotateToTarget(target, delta):
	var direction = (target.global_position - global_position)
	var angleTo = transform.x.angle_to(direction)
	rotate(sign(angleTo) * min(delta*rotationSpeed, abs(angleTo)))
	
