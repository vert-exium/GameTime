extends Node2D
@onready var target_area: ColorRect = $Container/BackPanel/TargetArea

@onready var Cont = $Container/BackPanel/TargetArea
#var round = 1
var posRNG = RandomNumberGenerator.new()

func _ready():
	startRound()
func startRound():
	#round+= 1
	Cont.position.x = posRNG.randf_range(0, 1280)
	#GlobalContainer.taptimeSpeed += 1
