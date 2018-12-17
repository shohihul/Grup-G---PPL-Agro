extends TextureButton




func _ready():
	pass

func _on_rumput_pressed():
	if data.pilihAlat == "celurit":
		if data.gunting <= 0:
			data.aktifitas = "Tidak punya celurit atau celuritmu sudah rusak"
		else:
			data.coin += 5
			data.gunting -1
			data.jumlahRumput -= 1
			queue_free()
