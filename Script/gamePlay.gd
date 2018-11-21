extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var popup = get_node("popup")
onready var pesan = get_node("popup/pesan")
var isiPesan
func _ready():
	show()


func _on_toko_pressed():
	get_tree().change_scene('res://Scene/toko.tscn')
	


func _on_gudang_pressed():
	get_tree().change_scene('res://Scene/gudang.tscn')


func _on_lahanTanam_pressed():
	if data.sertifikat == 1:
		get_tree().change_scene('res://Scene/lahan1.tscn')
	else:
		isiPesan = "Anda Belum Mempunyai Lahan"
		pesan.set_text(isiPesan)
		popup.show()


func _on_ok_pressed():
	popup.hide()
