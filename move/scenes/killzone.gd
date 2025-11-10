extends Area2D


@onready var countdown: Timer = $countdown


func _on_body_entered(body: Node2D) -> void:
	print("someone is dead")
	countdown.start()

func _on_countdown_timeout() -> void:
	get_tree().reload_current_scene()
