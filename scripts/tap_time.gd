extends Node2D
@onready var target_area: ColorRect = $Container/BackPanel/TargetArea

@onready var Cont = $Container/BackPanel/TargetArea

@onready var posRNG = RandomNumberGenerator.new()

func _ready():
	startRound()
func startRound():
	Cont.position.x = posRNG.randf_range(0, 1280)
	Taptimevariables.speed += 1
func _process(delta: float):
	print(str(Taptimevariables.randomizeRnd))
	if Taptimevariables.randomizeRnd == true:
		Taptimevariables.randomizeRnd = false
		startRound()
		
