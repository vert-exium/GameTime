extends Node2D

var rng = RandomNumberGenerator.new()
var scaleTween: Tween

func _ready() -> void:
	runTweens()
	$ScaleTimer.start()
	$scaleRNGTimer1.start(rng.randi_range(0.2, 2.2))
	$scaleRNGTimer2.start(rng.randi_range(0.2, 2.2))
	$scaleRNGTimer3.start(rng.randi_range(0.2, 2.2))
	$scaleRNGTimer4.start(rng.randi_range(0.2, 2.2))
	$scaleRNGTimer5.start(rng.randi_range(0.2, 2.2))

func _process(_delta: float):
	$Planet1.rotation += 0.0004
	$Planet2.rotation -= 0.0003
	$Planet3.rotation -= 0.0006
	$Planet4.rotation += 0.0005
	$Planet5.rotation -= 0.001

func _on_enter_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game_selector_screen.tscn")


func _on_scale_timer_timeout():
	runTweens()
# Runs the runTween function when the timer ends


func runTweens():
	pass
	#scaleTween = create_tween()
	#scaleTween.set_trans(Tween.TRANS_CIRC)
	#scaleTween.set_ease(Tween.EASE_OUT)
	#scaleTween.parallel().tween_property($Planet1,"scale",Vector2(1.1, 1.1), 4.0)
	#scaleTween.parallel().tween_property($Planet2,"scale",Vector2(1.1, 1.1), 4.0)
	#scaleTween.parallel().tween_property($Planet3,"scale",Vector2(1.1, 1.1), 4.0)
	#scaleTween.parallel().tween_property($Planet4,"scale",Vector2(1.1, 1.1), 4.0)
	#scaleTween.parallel().tween_property($Planet5,"scale",Vector2(1.1, 1.1), 4.0)
	# Runs the scale up in paralell with the other ones, so they all scale at the same time,
	# instead of waiting for the previous one to finish. Also sets the transition (quint style)
	# and the ease style (out). 
	
	
	#scaleTween.set_trans(Tween.TRANS_LINEAR)
	#scaleTween.tween_property($Planet4,"scale",Vector2(0.95, 0.95),4.0)
	#scaleTween.parallel().tween_property($Planet5,"scale",Vector2(0.95, 0.95),4.0)
	#scaleTween.parallel().tween_property($Planet3,"scale",Vector2(0.95, 0.95),4.0)
	#scaleTween.parallel().tween_property($Planet2,"scale",Vector2(0.95, 0.95),4.0)
	#scaleTween.parallel().tween_property($Planet1,"scale",Vector2(0.95, 0.95),4.0)
	
	# Runs the scale down in paralell, except for the first one so that it must wait for the
	# scale up to complete in order to start the scale down. Also sets the transition style
	# to linear (the default) for a nicer effect.

func _on_scale_rng_timer_1_timeout() -> void:
	scaleTween = create_tween()
	scaleTween.tween_property($Planet1,"scale",Vector2(1.1, 1.1), 4.0)
	scaleTween.tween_property($Planet1, "scale",Vector2(0.95, 0.95), 4.0)

func _on_scale_rng_timer_2_timeout() -> void:
	scaleTween = create_tween()
	scaleTween.tween_property($Planet2,"scale",Vector2(1.1, 1.1), 4.0)
	scaleTween.tween_property($Planet2, "scale",Vector2(0.95, 0.95), 4.0)

func _on_scale_rng_timer_3_timeout() -> void:
	scaleTween = create_tween()
	scaleTween.tween_property($Planet3,"scale",Vector2(1.1, 1.1), 4.0)
	scaleTween.tween_property($Planet3, "scale",Vector2(0.95, 0.95), 4.0)

func _on_scale_rng_timer_4_timeout() -> void:
	scaleTween = create_tween()
	scaleTween.tween_property($Planet4,"scale",Vector2(1.1, 1.1), 4.0)
	scaleTween.tween_property($Planet4, "scale",Vector2(0.95, 0.95), 4.0)

func _on_scale_rng_timer_5_timeout() -> void:
	scaleTween = create_tween()
	scaleTween.tween_property($Planet5,"scale",Vector2(1.4, 1.4), 4.0)
	scaleTween.tween_property($Planet5, "scale",Vector2(0.95, 0.95), 4.0)
