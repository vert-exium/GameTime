extends Control


@onready var marker = $Marker
var posTween: Tween
var taptimeSpeed = 2
func _ready() -> void:
	posTween = create_tween()
	posTween.set_loops()
	posTween.tween_property(marker, "position:x", 1472, 2) #* (2/ taptimeSpeed))
	posTween.tween_property(marker, "position:x", 0, 2) #* (2/ taptimeSpeed))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass 
