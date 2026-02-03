extends Control


@onready var marker = $Marker
var posTween: Tween
var taptimeSpeed = 2
func _ready() -> void:
	posTween = create_tween()
	# FIX! The below is called (previously with a set_loops) on ready. This wont
	# apply the speed. Make sure the tween is called when the other one ends
	posTween.tween_property(marker, "position:x", 1472, 2 *(2/ Taptimevariables.speed))
	posTween.tween_property(marker, "position:x", 0, 2*(2/ Taptimevariables.speed))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass 
