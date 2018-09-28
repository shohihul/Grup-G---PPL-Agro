extends Node2D
var popupMulai
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	popupMulai = get_node("popupMulai")
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_mulai_pressed():
	popupMulai.show()
	pass # replace with function body


func _on_tidak_pressed():
	popupMulai.hide()
	pass # replace with function body


func _on_ya_pressed():
	get_tree().change_scene('res://Scene/gameplay.tscn')
	pass # replace with function body


func _on_lanjutkan_pressed():
	popupMulai.show()
	pass # replace with function body


func _on_keluar_pressed():
	get_tree().quit()
	pass # replace with function body
