extends CharacterBody2D

# Vector like [x,y] direction value
var direction: Vector2 = Vector2(1,0)
var speed: int = 150
# Function which run on evry frame
func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left","right","top","bottom")	
	#position +=direction * speed
	velocity = direction * speed
	animation()
	move_and_slide()
	
func animation():
	if direction:
		if Input.is_action_pressed("left"):
			$AnimatedSprite2D.flip_h=false			
			$AnimatedSprite2D.play("left")
		elif Input.is_action_pressed("top"):
					$AnimatedSprite2D.play("top")
		elif Input.is_action_pressed("bottom"):
			$AnimatedSprite2D.play("bottom")
		elif Input.is_action_pressed("right"):
				$AnimatedSprite2D.play("left")
				$AnimatedSprite2D.flip_h=true			
		else:
			$AnimatedSprite2D.frame=0
				
			
	
