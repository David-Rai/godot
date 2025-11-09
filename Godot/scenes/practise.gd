extends Node2D

@export var intensity=20
@export var player_node:Node2D

#runs on scene rendered
func _ready() -> void:
	if player_node is Node2D:
		#print("It is 2d node")
	$Label.text="Helloaasllsalsalds"
	$Label.modulate=Color.GREEN
	
#Runs on every physics changes
func _physics_process(delta):
	if Input.is_action_pressed("space"):
		$Label.visible=false
	if Input.is_action_just_released("space"):
		$Label.modulate=Color.RED
		$Label.visible=true
