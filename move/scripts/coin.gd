extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

	
# When players touches the coins	
func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		Global.increase_score()
		animation_player.play('pickup')
