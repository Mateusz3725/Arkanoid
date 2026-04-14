extends Node2D

var brick_scene = preload("res://cegła.tscn")

@onready var ball = $Ball
@onready var label = $Label
@onready var timer = $Timer



func _ready():
	for i in range(5):
		for j in range(5):
			var brick = brick_scene.instantiate()
			add_child(brick)
			brick.position = Vector2(100 + 150 * i, 50 + 50 * j)
	
func _process(delta):
	print(floor(timer.time_left))
	if timer.time_left > 0:
		label.text = str(floor(timer.time_left))
	else:
		label.text = ""

func _on_timer_timeout():
	ball.speed_x = 5
	ball.speed_y = 5
