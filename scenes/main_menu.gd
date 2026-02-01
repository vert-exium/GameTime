extends Node2D

var dir: String

func _ready() -> void:
	dir = "up"
	$Planet1.scale.x = 1
	$Planet1.scale.y = 1



func _process(delta: float) -> void:
	$Planet1.rotation += 0.001
	if $Planet1.scale.x < 0.94:
		dir = "up"
	elif $Planet1.scale.x > 1.15:
		dir = "down"
	if dir == "up":
		$Planet1.scale.x += 0.0003
		$Planet1.scale.y += 0.0003
	elif dir == "down":
		$Planet1.scale.x -= 0.0003
		$Planet1.scale.y -= 0.0003
func _on_enter_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game_selector_screen.tscn")
