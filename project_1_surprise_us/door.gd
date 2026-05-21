extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		var main = get_tree().current_scene
		main.trigger_scare()
