extends Node2D
var popupMulai
var dataDihapus

func _ready():
	popupMulai = get_node("popupMulai")

func _on_mulai_pressed():
	popupMulai.show()

func _on_tidak_pressed(): #tombol tidak popup
	popupMulai.hide()

func _on_ya_pressed(): #tombol ya popup
	get_tree().change_scene('res://Scene/gameplay.tscn')

func _on_lanjutkan_pressed(): #tombol lanjutkan
	get_tree().change_scene('res://Scene/gameplay.tscn') 

func _on_keluar_pressed(): #tombol quit
	get_tree().quit() 


func _on_petunjuk_pressed(): #tombol petunjuk
	get_tree().change_scene('res://Scene/petunjuk.tscn') 

