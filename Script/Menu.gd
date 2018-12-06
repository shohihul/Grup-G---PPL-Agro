extends Node2D
var popupMulai
var popupKeluar
var popupPengaturan
var nama
var textFieldNama
var suaraOff
var suaraOn
var musikOff
var musikOn
var musik = load("res://Script/musik.gd").new()



func _ready():
	popupMulai = get_node("popupMulai")
	popupKeluar = get_node("popupKeluar")
	popupPengaturan = get_node("popupPengaturan")
	nama = get_node("nama")
	suaraOff = get_node("popupPengaturan/background2/suaraOn/suaraOff")
	suaraOn = get_node("popupPengaturan/background2/suaraOn")
	musikOff = get_node("popupPengaturan/background2/musikOn/musikOff")
	musikOn = get_node("popupPengaturan/background2/musikOn")
	textFieldNama = get_node("nama/background2/TextFieldNama")
	
	
func _on_mulai_pressed():
	popupMulai.show()
	suara.play("Tiny Button")

func _on_tidak_pressed(): #tombol tidak popup
	popupMulai.hide()
	suara.play("Tiny Button")

func _on_ya_pressed(): #tombol ya popup
	nama.show()
	popupMulai.hide()
	suara.play("Tiny Button")

func _on_lanjutkan_pressed(): #tombol lanjutkan
	get_tree().change_scene('res://Scene/gameplay.tscn') 
	suara.play("Tiny Button")

func _on_keluar_pressed(): #tombol quit
	popupKeluar.show()
	suara.play("Tiny Button")

func _on_petunjuk_pressed(): #tombol petunjuk
	get_tree().change_scene('res://Scene/petunjuk.tscn') 
	suara.play("Tiny Button")

func _on_yaKeluar_pressed():
	get_tree().quit()
	suara.play("Tiny Button")

func _on_tidakKeluar_pressed():
	popupKeluar.hide()
	suara.play("Tiny Button")

func _on_pengaturan_pressed():
	popupPengaturan.show()
	suara.play("Tiny Button")
	
func _on_close_pressed():
	popupPengaturan.hide()
	suara.play("Tiny Button")

func _on_suaraOn_pressed():
	suaraOff.show()
	suara.play("Tiny Button")
	AudioServer.set_fx_global_volume_scale(0)
	

func _on_suaraOff_pressed():
	suaraOff.hide()
	AudioServer.set_fx_global_volume_scale(1)
	suara.play("Tiny Button")

func _on_musikOn_pressed():
	musikOff.show()
	#musik.stop()
	AudioServer.set_stream_global_volume_scale(0)
	suara.play("Tiny Button")
	

func _on_musikOff_pressed():
	musikOff.hide()
	musik.play()
	suara.play("Tiny Button")
	AudioServer.set_stream_global_volume_scale(1)


func _on_info_pressed():
	suara.play("Tiny Button")
	

func _on_batal_pressed():
	nama.hide()
	suara.play("Tiny Button")


func _on_simpan_pressed():
	data.nama = textFieldNama.get_text()
	get_tree().change_scene('res://Scene/gameplay.tscn')
	pass