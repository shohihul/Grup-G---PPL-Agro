extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	show()


func _on_toko_pressed():
	get_tree().change_scene('res://Scene/toko.tscn')


func _on_gudang_pressed():
	get_tree().change_scene('res://Scene/gudang.tscn')
