extends CharacterBody2D

@export var speed: float = 150
@export var gravity: float = 50
@export var lift_force: float = -200
@export var descend_force: float = 100

func _ready():
	print("Plane is Ready!")

func _process(delta):
	# Menambahkan gravitasi
	velocity.y += gravity * delta

	# Jika tombol atas ditekan, pesawat naik
	if Input.is_action_pressed("ui_up"):
		velocity.y += lift_force * delta
	elif Input.is_action_pressed("ui_down"):
		velocity.y += descend_force * delta		

	# Jika tombol kiri/kanan ditekan, pesawat bergerak ke samping
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
	else:
		velocity.x = 0

	move_and_slide()
	
		# Jika pesawat jatuh ke bawah layar, restart level
	if position.y > get_viewport_rect().size.y:
		get_tree().reload_current_scene()
