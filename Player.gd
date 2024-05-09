extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var jumpCooldown = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	jumpCooldown -= 1
	if get_contact_count() > 0:
		if Input.is_action_pressed("Left"):
			apply_force(Vector2(-200000,0)*delta)
		if Input.is_action_pressed("Right"):
			apply_force(Vector2(200000,0)*delta)
		if Input.is_action_pressed("Jump") and jumpCooldown < 0:
			apply_force(Vector2(0,-1000000)*delta)
			jumpCooldown = 10
		set_axis_velocity(Vector2(linear_velocity.x*0.8,linear_velocity.y))
	else:
		if Input.is_action_pressed("Left"):
			apply_force(Vector2(-50000,0)*delta)
		if Input.is_action_pressed("Right"):
			apply_force(Vector2(50000,0)*delta)
		set_axis_velocity(Vector2(linear_velocity.x*0.95,linear_velocity.y))
