# Godot 

## Normal character movement(Node2d > Sprite2D)

```bash
extends Sprite2D

var speed=200
var direction=Vector2.ZERO

func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	move_character(delta)
	
func move_character(delta:float):
	direction=Vector2.ZERO
	if Input.is_action_pressed("left"):
		direction.x= -1
	if Input.is_action_pressed("right"):
		direction.x=1
	if Input.is_action_pressed("top"):
		direction.y= -1
	if Input.is_action_pressed("bottom"):
		direction.y= 1
	position +=direction.normalized() * speed * delta	
```

## Physics character movement (Character2D > Sprite2D,Collision2DShape)

```bash
extends CharacterBody2D

var speed=200

# Runs on every physics frame per rate
func _physics_process(delta: float) -> void:
	#var direction=Vector2.ZERO
	#if Input.is_action_pressed("left"):
		#direction.x=-1
	#if Input.is_action_pressed("right"):
		#direction.x=1
	#if Input.is_action_pressed("top"):
		#direction.y=-1
	#if Input.is_action_pressed("bottom"):
		#direction.y=1
	var direction = Input.get_vector('left','right','top','bottom')
	print(direction)
	velocity =direction.normalized() * speed
	move_and_slide()

```
