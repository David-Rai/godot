extends Area2D


@onready var countdown: Timer = $countdown


func _on_body_entered(body: Node2D) -> void:
	print("someone is dead")
	Engine.time_scale=0.5#slowing the engine
	countdown.start()

func _on_countdown_timeout() -> void:
	Engine.time_scale = 1 #restting the engine settings
	get_tree().reload_current_scene()
