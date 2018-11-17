extends Node2D

onready var jumlahAir = get_node("air/jumlahAir")
onready var adaSekop = get_node("sekop/adaSekop")
onready var adaCelurit = get_node("celurit/adaCelurit")
onready var jumlahPupuk = get_node("pupuk/jumlahPupuk")
onready var adaSertifikatTanah = get_node("sertifikatTanah/adaSertifikatTanah")
onready var jumlahBatang = get_node("batang/jumlahBatang")
onready var jumlahBibitPutih = get_node("bibitPutih/jumlahBibitPutih")
onready var jumlahBibitMerah = get_node("bibitMerah/jumlahBibitMerah")
onready var jumlahBibitKuning = get_node("bibitKuning/jumlahBibitKuning")

func _ready():
	
	
#	if (data.sekop == false):
#		data.sekop = "ada"
#	
#	if (data.celurit == false):
#		data.celurit = "ada" 
#	
#	if (data.sertifikatTanah == false):
#		data.sertifikatTanah = "ada" 
	jumlahAir.set_text(String(data.barang1))
	adaSekop.set_text(String(data.barang2))
	adaCelurit.set_text(String(data.barang3))
	jumlahPupuk.set_text(String(data.barang4))
	adaSertifikatTanah.set_text(String(data.barang5))
	jumlahBatang.set_text(String(data.barang6))
	jumlahBibitPutih.set_text(String(data.barang7))
	jumlahBibitMerah.set_text(String(data.barang8))
	jumlahBibitKuning.set_text(String(data.barang9))
	


func _on_kembali_pressed():
	get_tree().change_scene("res://Scene/gamePlay.tscn")
