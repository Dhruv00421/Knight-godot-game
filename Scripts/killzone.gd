extends Area2D

@onready var timer = $Timer
@onready var death = $Death


func _on_body_entered(body):
	#print("You died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	death.play()
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://Scenes/start_menu.tscn")
