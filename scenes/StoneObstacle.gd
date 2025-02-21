extends Area2D

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body is CharacterBody2D:
		print("Hit Stone! Restarting level...")
		get_tree().reload_current_scene()
