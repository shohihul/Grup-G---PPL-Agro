extends Node2D

onready var popup = get_node("popup")
onready var pesan = get_node("popup/pesan")
var isiPesan
func _ready():
	pass

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

#func get_state():
#	var save_dict = {
#		inventaris={
#			nama = data.nama,
#			coin = data.coin,
#			air = data.air,
#			sekop = data.sekop,
#			gunting = data.gunting,
#			pupuk = data.pupuk,
#			sertifikat = data.sertifikat,
#			penyangga = data.penyangga,
#			bibitPutih = data.bibitPutih,
#			bibitMerah = data.bibitMerah,
#			bibitKuning = data.bibitKuning
#		}
#	}
#	return save_dict