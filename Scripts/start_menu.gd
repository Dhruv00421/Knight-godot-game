extends Control

@onready var tap = $Tap


func _on_play_pressed():
	tap.play()
	$Timer.start()


func _on_exit_pressed():
	tap.play()
	get_tree().quit()


func _on_option_pressed():
	tap.play()


func _on_timer_timeout():
	#print("timeout")
	# Change the scene
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
