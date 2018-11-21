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

var sekopReady = 0
var guntingReady = 0
func _ready():
	if data.sekop >= 1:
		sekopReady = 1
	else:
		sekopReady = 0
	
	if data.gunting >=1:
		guntingReady = 1
	else:
		guntingReady = 0
#	if (data.sekop == false):
#		data.sekop = "ada"
#	
#	if (data.celurit == false):
#		data.celurit = "ada" 
#	
#	if (data.sertifikatTanah == false):
#		data.sertifikatTanah = "ada" 
	jumlahAir.set_text(String(data.air))
	adaSekop.set_text(String(sekopReady))
	adaCelurit.set_text(String(guntingReady))
	jumlahPupuk.set_text(String(data.pupuk))
	adaSertifikatTanah.set_text(String(data.sertifikat))
	jumlahBatang.set_text(String(data.penyangga))
	jumlahBibitPutih.set_text(String(data.bibitPutih))
	jumlahBibitMerah.set_text(String(data.bibitMerah))
	jumlahBibitKuning.set_text(String(data.bibitKuning))
	


func _on_kembali_pressed():
	get_tree().change_scene("res://Scene/gamePlay.tscn")
