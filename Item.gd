extends Area2D

export var number = "x"

onready var number_label = $Label


func _ready():
	number_label.set_text(number)
