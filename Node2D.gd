extends Node2D

onready var nav = $Navigation2D
onready var chara = $Player

func _unhandled_input(event):
	if not event is InputEventMouseButton:
		return
	if event.button_index != BUTTON_LEFT or not event.pressed:
		return
		
	var path = nav.get_simple_path(chara.global_position, event.global_position)
	chara.path = path
