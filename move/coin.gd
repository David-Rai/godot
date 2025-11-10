extends Area2D

func _ready() -> void:
	print("coin rendered")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		queue_free()
