extends TextureButton




func _ready():
	pass

func _on_rumput_pressed():
	if data.pilihAlat == "celurit":
		data.coin += 20
		data.jumlahRumput -= 1
		coin.coin.set_text("COIN = " +String(data.coin))
		queue_free()
