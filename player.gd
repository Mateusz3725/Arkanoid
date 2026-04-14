extends Sprite2D

func _ready():
	pass
	
func _process(delta):
	player_sterring()
	
func player_sterring():
	#Ruch
	if Input.is_action_pressed("ui_left"):
		position.x -= 5
	elif Input.is_action_pressed("ui_right"):
		position.x +=5
#Granice V1
	#if position.x > 750:
		#position.x =750
	#elif position.x <50:
		#position.x = 50
#Granice V2
	position.x = clamp(position.x, 230, 830)
