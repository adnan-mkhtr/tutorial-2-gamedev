extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
		
		await get_tree().create_timer(2.0).timeout
		get_tree().change_scene_to_file("res://scenes/LatihanMandiri.tscn")
