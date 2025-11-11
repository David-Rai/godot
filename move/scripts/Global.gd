extends Node

# Signals to pass the new Score
var score=0
signal change_score(new_score)

#increase score
func increase_score():
	score += 1
	emit_signal('change_score',score)	
