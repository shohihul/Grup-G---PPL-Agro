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
onready var popupJual = get_node("popupJual")

var jumlahPutih
var jumlahMerah
var jumlahKuning

var sekopReady = 0
var guntingReady = 0
func _ready():
	
	jumlahPutih = get_node("popupJual/buahPutih/jumlahPutih")
	jumlahMerah = get_node("popupJual/buahMerah/jumlahMerah")
	jumlahKuning = get_node("popupJual/buahKuning/jumlahKuning")
	
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
	
	jumlahPutih.set_text(String(data.buahPutih))
	jumlahMerah.set_text(String(data.buahMerah))
	jumlahKuning.set_text(String(data.buahKuning))
	
#	jumlahMerah.set_text(String(data.buahMerah))
#	jumlahKuning.set_text(String(data.buahKuning))
#	jumlahPutih.set_text(String(data.buahPutih))
	


func _on_kembali_pressed():
	get_tree().change_scene("res://Scene/gamePlay.tscn")


func _on_tempat_pressed():
	popupJual.show()


func _on_buahMerah_pressed():
	#harga 60
	data.coin += 60*data.buahMerah
	data.buahMerah = 0
	get_tree().reload_current_scene()


func _on_buahPutih_pressed():
	#harga 70
	data.coin += 70*data.buahPutih
	data.buahPutih = 0
	get_tree().reload_current_scene()


func _on_buahKuning_pressed():
	#harga 80
	data.coin += 80*data.buahKuning
	data.buahKuning = 0
	get_tree().reload_current_scene()
