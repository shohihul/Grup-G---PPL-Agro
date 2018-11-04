extends Button
var tanah
var tanda
var penyangga
var bibitMerah
var bibitKuning
var bibitPutih
var pupuk

var jenisBibit
var tahap = 0
var mouse_over = true

func _ready():
	tanah = get_node("tanah")
	tanda = get_node("tanda")
	penyangga = get_node("penyangga")
	bibitMerah = get_node("bibitMerah")
	bibitKuning = get_node("bibitKuning")
	bibitPutih = get_node("bibitPutih")
	pupuk = get_node("pupuk")

func _on_tanda_button_down():

# -------------------------------------------------- Saat Tanah Kosong
	if data.pilihAlat == null:
			print("info tanaman")
# -------------------------------------------------- Saat Tanah Kosong

# -------------------------------------------------- Menggali tanah
	if data.pilihAlat == "sekop":
		if tahap == 0:
			print("muncul tanah")
			tanah.show()
			tanda.hide()
			tahap = 1
		elif tahap == 1:
			print("tanah ini sudah dicangkul")
# -------------------------------------------------- Menggali Tanah

# -------------------------------------------------- Pemasangan Penyangga
	if data.pilihAlat == "penyangga":
		if tahap == 0:
			print("Cangkul Tanah Dulu")
		elif tahap == 1:
			print("memasang Penyangga")
			penyangga.show()
			tahap = 2
		elif tahap == 2:
			print("Penyangga telah dipasang")
# -------------------------------------------------- Pemasangan Penyangga

# -------------------------------------------------- Menanam Bibit
	if data.pilihAlat == "bibit":
		if tahap == 0:
			print("Cangkul Tanah Dulu")
		elif tahap == 1:
			print("pasang penyangga dulu")
		elif tahap == 2:
# ----------------------------------------------- Merah
			if data.jenisBibit == 1:
				bibitMerah.show()
				tahap = 3
# ----------------------------------------------- Kuning
			elif data.jenisBibit == 2:
				bibitKuning.show()
				tahap = 3
# ----------------------------------------------- Putih
			elif data.jenisBibit == 3:
				bibitPutih.show()
				tahap = 3
		elif tahap == 3:
			print("Tanam Bibit Ditempat Lain")
			
# -------------------------------------------------- Menanam Bibit

# -------------------------------------------------- Memberi Pupuk
	if data.pilihAlat == "pupuk":
			if tahap == 0:
				print("Cangkul Tanah Dulu")
			elif tahap == 1:
				print("pasang penyangga dulu")
			elif tahap == 2:
				print("Tanam Bibit dulu x")
			elif tahap == 3:
				print("Diberi Pupuk")
				pupuk.show()
				tahap == 4
# -------------------------------------------------- Memberi Pupuk