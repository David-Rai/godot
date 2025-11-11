extends Area2D

#checking if player strike this shit
func _on_body_entered(body: Node2D) -> void:
	print("you died")
	body.get_node("CollisionShape2D").queue_free()
	Engine.time_scale=0.4
	await get_tree().create_timer(0.5).timeout
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
