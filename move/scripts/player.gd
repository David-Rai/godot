extends CharacterBody2D

@export var speed := 200
var direction := Vector2.ZERO
@export var jump_force := 400
@export var gravity_force := 900

func _physics_process(delta: float) -> void:
	# Get horizontal input only
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	velocity.x = direction.x * speed
	
	# Apply gravity
	add_gravity(delta)
	
	# Check jump
	check_jump()
	
	# Move the player with collisions
	move_and_slide()

# Handle jump
func check_jump():
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -jump_force

# Apply gravity
func add_gravity(delta: float):
	if not is_on_floor():
		velocity.y += gravity_force * delta
