extends CharacterBody2D

@export var speed = 200

func _physics_process(delta):
	var direction = Vector2.ZERO

	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down")

	velocity = direction * speed
	move_and_slide()
