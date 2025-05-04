extends Area2D

@onready var gamemanager = %Gamemanager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(_body):
	gamemanager.add_pt()
	#print("1 coin!")
	#queue_free()
	
	animation_player.play("Pickup")
