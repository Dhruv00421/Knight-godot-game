extends Node

var score = 0
@onready var scorelabel = $Scorelabel
@onready var label = $Label
@onready var player = $"../Player"

@onready var coin_counts = $"../HUD/Coin_counts"



func add_pt():
	score += 1
	scorelabel.text = "You collected " + str(score) + "/46" + " coins."
	coin_counts.text = str(score) + "/46"








