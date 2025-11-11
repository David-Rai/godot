extends Label

func _ready() -> void:
	# Connect to the global signal
	Global.connect("change_score",Callable(self, "_on_score_change"))
	
	# Optional: set initial score
	text = "Score: " + str(Global.score)

func _on_score_change(new_score):
	text = "Score: " + str(new_score)  # update label
