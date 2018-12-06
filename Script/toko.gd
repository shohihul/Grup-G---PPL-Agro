extends Node

onready var windowBeli = get_node("WindowDialogBeli")
onready var windowBeliAlat = get_node("WindowDialogBeliAlat")
onready var windowInfo = get_node("info")
onready var deskripsi = get_node("info/deskripsi")
onready var pilihJumlah = get_node("WindowDialogBeli/pilihJumlah")
onready var labelBeliAlat = get_node("WindowDialogBeliAlat/labelBeliAlat")
onready var pembelian = get_node("popupPembelian/pesan")
onready var popupPembelian = get_node("popupPembelian")
var isiDeskripsi = ""
onready var tokoList = get_node("tokoList")
var idBarang
var a
var harga = 0
var pesanPembelian
var total = 0

func _ready():
	
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
		
func cekKoin():
	if data.coin <= 0:
		print("")

func _on_air_pressed():
	data.idBarang = 1
	data.jenisBarang = null
	print("Id barang " +String(data.idBarang))
	windowInfo.popup()
	isiDeskripsi = "Nama : Air\n"
	isiDeskripsi = isiDeskripsi + "Harga : 5 Coin/Liter\n"
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
# ------------------------------------------------- Air
	if data.idBarang ==  1:
		harga = 5
		total = harga*pilihJumlah.get_value()
		if data.coin < total:
			pesanPembelian = "Gagal Membeli, Koin Anda Kurang"
		else:
			data.air += pilihJumlah.get_value()
			pesanPembelian = "Berhasil membeli " +String(pilihJumlah.get_value()) +" Liter Air"
# ------------------------------------------------- Sekop
	if data.idBarang == 2:
		if data.sekop > 0:
			pesanPembelian = "Anda sudah punya sekop"
		else:
			harga = 50
			total = harga
			if data.coin < total:
				pesanPembelian = "Gagal Membeli, Koin Anda Kurang"
			else:
				data.sekop += 10
				pesanPembelian = "Berhasil membeli sekop"

# ------------------------------------------------- Celurit
	if data.idBarang == 3:
		if data.gunting > 0:
			pesanPembelian = "Anda sudah punya Celurit"
		else:
			harga = 50
			total = harga
			if data.coin < total:
				pesanPembelian = "Gagal Membeli, Koin Anda Kurang"
			else:
				data.gunting += 10
				pesanPembelian = "Berhasil membeli Celurit"

# ------------------------------------------------- pupuk
	if data.idBarang == 4:
		harga = 15
		total = harga*pilihJumlah.get_value()
		if data.coin < total:
			pesanPembelian = "Gagal Membeli, Koin Anda Kurang"
		else:
			data.pupuk += pilihJumlah.get_value()
			pesanPembelian = "Berhasil membeli " +String(pilihJumlah.get_value()) +" pupuk"

# ------------------------------------------------- Sertifikat Tanah
	if data.idBarang == 5:
		if data.sertifikat > 0:
			pesanPembelian = "Anda sudah punya lahan"
		else:
			harga = 1000
			total = harga
			if data.coin < total:
				pesanPembelian = "Gagal Membeli, Koin Anda Kurang"
			else:
				data.sertifikat += 1
				pesanPembelian = "Berhasil membeli lahan"

# ------------------------------------------------- Batang
	if data.idBarang == 6:
		harga = 10
		total = harga*pilihJumlah.get_value()
		if data.coin < total:
			pesanPembelian = "Gagal Membeli, Koin Anda Kurang"
		else:
			data.penyangga += pilihJumlah.get_value()
			pesanPembelian = "Berhasil membeli " +String(pilihJumlah.get_value()) +" penyangga"

# ------------------------------------------------- Bibit Putih
	if data.idBarang == 7:
		harga = 15
		total = harga*pilihJumlah.get_value()
		if data.coin < total:
			pesanPembelian = "Gagal Membeli, Koin Anda Kurang"
		else:
			data.bibitPutih += pilihJumlah.get_value()
		pesanPembelian = "Berhasil membeli " +String(pilihJumlah.get_value()) +" buah bibit putih"

# ------------------------------------------------- Bibit Merah
	if data.idBarang == 8:
		harga = 10
		total = harga*pilihJumlah.get_value()
		if data.coin < total:
			pesanPembelian = "Gagal Membeli, Koin Anda Kurang"
		else:
			data.bibitMerah += pilihJumlah.get_value()
		pesanPembelian = "Berhasil membeli " +String(pilihJumlah.get_value()) +" buah bibit merah"

# ------------------------------------------------- Bibit Kuning
	if data.idBarang == 9:
		harga = 20
		total = harga*pilihJumlah.get_value()
		if data.coin < total:
			pesanPembelian = "Gagal Membeli, Koin Anda Kurang"
		else:
			data.bibitKuning += pilihJumlah.get_value()
		pesanPembelian = "Berhasil membeli " +String(pilihJumlah.get_value()) +" buah bibit kuning"
		
	data.coin -= total
	windowBeliAlat.hide()
	windowBeli.hide()
	popupPembelian.show()
	pembelian.set_text(pesanPembelian)

# Scene Gudang
func _on_gudang_pressed():
	get_tree().change_scene('res://Scene/gudang.tscn')


func _on_kembali_pressed():
	get_tree().change_scene('res://Scene/gamePlay.tscn')


func _on_ok_pressed():
	get_tree().reload_current_scene()
