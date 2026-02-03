extends Area2D

var in_target := false

func _on_area_entered(area):
		in_target = true
func _on_area_exited(area):
		in_target = false


func _input(event: InputEvent):
	if event.is_action_pressed("ui_accept"):
		if in_target:
			print("HIT")
			Taptimevariables.roundNum += 1
			Taptimevariables.randomizeRnd = true
		else:
			print("MISS")
