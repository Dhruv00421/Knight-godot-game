extends Area2D

@onready var collision_shape = $CollisionShape2D

@onready var label = $"../Gamemanager/Label"
@onready var scorelabel = $"../Gamemanager/Scorelabel"

@onready var player = %Player
@onready var over = $Over

#label.visible_ratio = 0

func _on_body_entered(_body):
	label.visible_ratio = 1
	scorelabel.visible_ratio = 1
	over.play()
