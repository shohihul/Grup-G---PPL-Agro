extends Node2D

onready var popup = get_node(".")
onready var isiPopUp = get_node("isiPopup")

func _ready():
	var isi = "a"
	isiPopUp.set_text(isi)
	pass


func _on_ok_pressed():
	popup.hide()
