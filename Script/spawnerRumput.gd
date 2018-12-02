extends Node

const rumput = preload("res://Scene/rumput.tscn")

func _ready():
	spawn()
	pass

func spawn():
	while true:
		randomize()
		var munculRumput = rumput.instance()
		var pos = Vector2()
		pos.x   = rand_range(0+200, utils.view_size.width-200)
		pos.y   = rand_range(0+60, utils.view_size.height-60)
		munculRumput.set_pos(pos)
		get_node("container").add_child(munculRumput)
		yield(utils.create_timer(rand_range(3, 10)), "timeout")
		data.jumlahRumput += 1
		print("rumput " +String(pos))
	pass
