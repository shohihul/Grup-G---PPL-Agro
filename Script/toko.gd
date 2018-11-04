extends Node

onready var windowBeli = get_node("WindowDialogBeli")
onready var windowBeliAlat = get_node("WindowDialogBeliAlat")
onready var windowInfo = get_node("info")
onready var deskripsi = get_node("info/deskripsi")
onready var pilihJumlah = get_node("WindowDialogBeli/pilihJumlah")
onready var labelBeliAlat = get_node("WindowDialogBeliAlat/labelBeliAlat")
var isiDeskripsi = ""
onready var tokoList = get_node("tokoList")
var idBarang
var a

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _on_tutup_pressed():
	windowBeli.hide()
	windowBeliAlat.hide()

func _on_tutupInfo_pressed():
	windowInfo.hide()

func _on_beliInfo_pressed():
	windowInfo.hide()
	if data.jenisBarang == "alat":
		windowBeliAlat.show()
		labelBeliAlat.set_text("Beli " +a)
	else:
		windowBeli.show()
	

func _on_air_pressed():
	data.idBarang = 1
	data.jenisBarang = null
	print("Id barang " +String(data.idBarang))
	windowInfo.popup()
	isiDeskripsi = "Nama : Air\n"
	isiDeskripsi = isiDeskripsi + "Harga : 20 Coin/Liter\n"
	isiDeskripsi = isiDeskripsi + "\n air digunakan untuk memberikan nutrisi pada tanaman buah naga."
	deskripsi.set_bbcode(isiDeskripsi)
	
func _on_sekop_pressed():
	data.idBarang = 2
	data.jenisBarang = "alat"
	a = "Sekop"
	print("Id barang " +String(data.idBarang))
	windowInfo.popup()
	isiDeskripsi = "Nama : Sekop\n"
	isiDeskripsi = isiDeskripsi + "Harga : 80 Coin\n"
	isiDeskripsi = isiDeskripsi + "\nCangkul merupakan alat yang digunakan untuk menghancurkan tanah agar bias menanam bibit buah naga."
	deskripsi.set_bbcode(isiDeskripsi)


func _on_celurit_pressed():
	data.idBarang = 3
	data.jenisBarang = "alat"
	a = "Celurit"
	print("Id barang " +String(data.idBarang))
	windowInfo.popup()
	isiDeskripsi = "Nama : Celurit\n"
	isiDeskripsi = isiDeskripsi + "Harga : 70 Coin\n"
	isiDeskripsi = isiDeskripsi + "\nCelurit digunakan untuk memotong tangkai tanaman buah naga serta digunakan untuk memotong buah naga dari batang apabila telah matang."
	deskripsi.set_bbcode(isiDeskripsi)


func _on_pupuk_pressed():
	data.idBarang = 4
	data.jenisBarang = null
	print("Id barang " +String(data.idBarang))
	windowInfo.popup()
	isiDeskripsi = "Nama : Pupuk\n"
	isiDeskripsi = isiDeskripsi + "Harga : 100 Coin\n"
	isiDeskripsi = isiDeskripsi + "\nPupuk digunakan untuk memberikan nutrisi pada tanaman buah naga."
	deskripsi.set_bbcode(isiDeskripsi)


func _on_sertifikatTanah_pressed():
	data.idBarang = 5
	data.jenisBarang = "alat"
	a = "Sertifikat Tanah"
	print("Id barang " +String(data.idBarang))
	windowInfo.popup()
	isiDeskripsi = "Nama : Sertifikat Tanah\n"
	isiDeskripsi = isiDeskripsi + "Harga : 250 Coin\n"
	isiDeskripsi = isiDeskripsi + "\nTanah merupakan media untuk menanam bibit buah naga."
	deskripsi.set_bbcode(isiDeskripsi)

func _on_batang_pressed():
	data.idBarang = 6
	data.jenisBarang = null
	print("Id barang " +String(data.idBarang))
	windowInfo.popup()
	isiDeskripsi = "Nama : Batang penyangga\n"
	isiDeskripsi = isiDeskripsi + "Harga : 25 Coin\n"
	isiDeskripsi = isiDeskripsi + "\nTiang penyangga digunakan sebagai penyangga tanaman buah naga agar tetap kokoh serta tanaman buah naga tidak menjalar kemana-mana."
	deskripsi.set_bbcode(isiDeskripsi)
	
func _on_bibitPutih_pressed():
	data.idBarang = 7
	data.jenisBarang = null
	print("Id barang " +String(data.idBarang))
	windowInfo.popup()
	isiDeskripsi = "Nama : Bibit Pohon Buah Naga Putih\n"
	isiDeskripsi = isiDeskripsi + "Harga : 35 Coin\n"
	isiDeskripsi = isiDeskripsi + "\nBibit in sebagai calon tanaman yang siap untuk ditanam."
	deskripsi.set_bbcode(isiDeskripsi)


func _on_bibitMerah_pressed():
	data.idBarang = 8
	data.jenisBarang = null
	print("Id barang " +String(data.idBarang))
	windowInfo.popup()
	isiDeskripsi = "Nama : Bibit Pohon Buah Naga Merah\n"
	isiDeskripsi = isiDeskripsi + "Harga : 25 Coin\n"
	isiDeskripsi = isiDeskripsi + "\nBibit in sebagai calon tanaman yang siap untuk ditanam."
	deskripsi.set_bbcode(isiDeskripsi)


func _on_bibitKuning_pressed():
	data.idBarang = 9
	data.jenisBarang = null
	print("Id barang " +String(data.idBarang))
	windowInfo.popup()
	isiDeskripsi = "Nama : Bibit Pohon Buah Naga Kuning\n"
	isiDeskripsi = isiDeskripsi + "Harga : 55 Coin\n"
	isiDeskripsi = isiDeskripsi + "\nBibit in sebagai calon tanaman yang siap untuk ditanam."
	deskripsi.set_bbcode(isiDeskripsi)


func _on_beli_pressed():
	data.jumlah = pilihJumlah.get_value()
# ------------------------------------------------- Air
	if data.idBarang ==  1:
		data.barang1 += data.jumlah
		print("jumlah air adalah " + String(data.barang1))
		data.coin -= 20*data.jumlah

# ------------------------------------------------- Sekop
	if data.idBarang == 2:
		if data.barang2 > 0:
			print("Anda sudah punya barang ini")
		else:
			data.barang2 += 1
			print("Sekop Terbeli")

# ------------------------------------------------- Celurit
	if data.idBarang == 3:
		if data.barang3 > 0:
			print("Anda sudah punya barang ini")
		else:
			data.barang3 += 1
			print("Celurit Terbeli")

# ------------------------------------------------- pupuk
	if data.idBarang == 4:
		data.barang4 += data.jumlah
		print("jumlah pupuk adalah " + String(data.barang4))

# ------------------------------------------------- Sertifikat Tanah
	if data.idBarang == 5:
		if data.barang5 > 0:
			print("Anda sudah punya barang ini")
		else:
			data.barang5 += 1
			print("Sertifikat Tanah Terbeli")

# ------------------------------------------------- Batang
	if data.idBarang == 6:
		data.barang6 += data.jumlah
		print("jumlah pupuk adalah " + String(data.barang6))

# ------------------------------------------------- Bibit Putih
	if data.idBarang == 7:
		data.barang7 += data.jumlah
		print("jumlah pupuk adalah " + String(data.barang7))

# ------------------------------------------------- Bibit Merah
	if data.idBarang == 8:
		data.barang6 += data.jumlah
		print("jumlah pupuk adalah " + String(data.barang8))

# ------------------------------------------------- Bibit Kuning
	if data.idBarang == 9:
		data.barang6 += data.jumlah
		print("jumlah pupuk adalah " + String(data.barang9))

# Scene Gudang
func _on_gudang_pressed():
	get_tree().change_scene('res://Scene/gudang.tscn')
