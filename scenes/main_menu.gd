extends Node2D

var colortween: Tween

func _ready() -> void:
	colortween = create_tween()
	colortween.set_loops()
	colortween.tween_property($backColor, "color", Color("#fea244"), 10.0)
	colortween.tween_property($backColor, "color", Color("#f14a29"), 10.0)


func _process(_delta: float):
	pass

func _on_enter_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game_selector_screen.tscn")
