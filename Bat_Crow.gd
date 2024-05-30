extends RigidBody2D

var rotationSpeed = 2.0

func _physics_process(delta):
	rotateToTarget(%RigidBody2D, delta)
	
func rotateToTarget(target, delta):
	var direction = (target.global_position - global_position)
	var angleTo = $Sprite.transform.x.angle_to(direction)
	$Sprite.rotate(sign(angleTo) * min(delta*rotationSpeed, abs(angleTo)))
	
