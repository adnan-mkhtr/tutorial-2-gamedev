extends Area2D

signal level_complete
var is_active: bool = true 

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body is CharacterBody2D:
		print("Congratulations, You have reached your destination!")
