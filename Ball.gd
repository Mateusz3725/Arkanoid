extends Sprite2D

var speed_x = 0
var speed_y = 0

var bricks_list = []
func _ready():
	pass

func _process(delta):
	position.x += speed_x
	position.y += speed_y
	
	bricks_list = get_tree().get_nodes_in_group("bricks")
	print(bricks_list.size())
	
	#Granica
	if position.x > 800:
		speed_x *= -1
	if position.x < 0:
		speed_x *= -1
	if position.y > 600:
		get_tree().change_scene_to_file("res://main_scene.tscn")
	if position.y < 0:
		speed_y *= -1
		
		if bricks_list.size() == 0:
			print("win")
			get_tree().change_scene_to_file("res://main_scene.tscn")


func _on_area_2d_area_entered(area):
	speed_y *= -1
	if area.get_parent().is_in_group("bricks"):
		print("hit")
		area.get_parent().queue_free()
