extends Button
var tanah
var tanda
var penyangga
var bibitMerah
var bibitKuning
var bibitPutih
var pupuk
var popupButuhAir
var pohonBesar

var buah0
var buah1
var buah2
var buah3
var buah4
var buah5
var buah6
var buah7
var buah8
var buah9
var buah10
var buah11
var buah12
var buah13

onready var lahan = load("res://Script/lahan1.gd")


#var jenisBibit
var tahap


func _ready():
	buah0 = get_node("1")
	buah1 = get_node("2")
	buah2 = get_node("3")
	buah3 = get_node("4")
	buah4 = get_node("5")
	buah5 = get_node("6")
	buah6 = get_node("7")
	buah7 = get_node("8")
	buah8 = get_node("9")
	buah9 = get_node("10")
	buah10 = get_node("11")
	buah11 = get_node("12")
	buah12 = get_node("13")
	buah13 = get_node("14")

	tanah = get_node("tanah")
	tanda = get_node("tanda")
	penyangga = get_node("penyangga")
	bibitMerah = get_node("bibitMerah")
	bibitKuning = get_node("bibitKuning")
	bibitPutih = get_node("bibitPutih")
	pupuk = get_node("pupuk")
	popupButuhAir = get_node("butuhAir")
	pohonBesar = get_node("pohonBesar")
	
func _on_tanaman_pressed():
# -------------------------------------------------- Saat Tanah Kosong
	if data.pilihAlat == null:
		print("info tanaman")
		data.aktifitas = "Tempat ini siap untuk ditanam"
# -------------------------------------------------- Saat Tanah Kosong

# -------------------------------------------------- Menggali tanah
	if data.pilihAlat == "sekop":
		if data.sekop == 0:
			data.aktifitas = "Sekop tidak tersedia"
		else:
			if data.pohon[data.tandaSelect][0] == 0:
				data.aktifitas = "Mencangkul tanah"
				tanah.show()
				tanda.hide()
				tahap = 1
				data.sekop -=1
				data.pohon[data.tandaSelect][0] = tahap
			elif data.pohon[data.tandaSelect][0] == 1:
				data.aktifitas = "Tanah ini sudah dicangkul"
# -------------------------------------------------- Menggali Tanah

# -------------------------------------------------- Pemasangan Penyangga
	if data.pilihAlat == "penyangga":
		if data.penyangga == 0:
			data.aktifitas = "Penyangga kosong"
		else:
			if data.pohon[data.tandaSelect][0] == 0:
				data.aktifitas = "Anda belum mencangkul tanah"
			elif data.pohon[data.tandaSelect][0] == 1:
				data.aktifitas = "Memasang penyangga"
				penyangga.show()
				tahap = 2
				data.penyangga -= 1
				data.pohon[data.tandaSelect][0] = tahap
			elif data.pohon[data.tandaSelect][0] == 2:
				data.aktifitas = "Penyangga sudah dipasang"
# -------------------------------------------------- Pemasangan Penyangga

# -------------------------------------------------- Menanam Bibit
	if data.pilihAlat == "bibit":
		if data.pohon[data.tandaSelect][0] == 0:
				data.aktifitas = "Anda belum mencangkul tanah"
		elif data.pohon[data.tandaSelect][0] == 1:
			data.aktifitas = "Penyangga belum dipasang"
		elif data.pohon[data.tandaSelect][0] == 2:
# ----------------------------------------------- Merah
			if data.pilihJenisBibit == 1:
				if data.bibitMerah == 0:
					data.aktifitas = "Stok bibit merah habis"
				else:
					bibitMerah.show()
					tahap = 3
					data.bibitMerah -= 1
					data.pohon[data.tandaSelect][0] = tahap
# ----------------------------------------------- Kuning
			if data.pilihJenisBibit == 2:
				if data.bibitKuning == 0:
					data.aktifitas = "Stok bibit kuning habis"
				else:
					bibitKuning.show()
					tahap = 3
					data.bibitKuning -= 1
					data.pohon[data.tandaSelect][0] = tahap
# ----------------------------------------------- Putih
			if data.pilihJenisBibit == 3:
				if data.bibitPutih == 0:
					data.aktifitas = "Stok bibit putih habis"
				else:
					bibitPutih.show()
					tahap = 3
					data.bibitPutih -= 1
					data.pohon[data.tandaSelect][0] = tahap
			data.pohon[data.tandaSelect][1] = data.pilihJenisBibit
		elif tahap == 3:
			data.aktifitas = "Cari tempat lain"

# -------------------------------------------------- Menanam Bibit
# -------------------------------------------------- Memberi Pupuk
	if data.pilihAlat == "pupuk":
		if data.pupuk == 0:
			print("Pupuk Anda Habis")
		else:
			if data.pohon[data.tandaSelect][0] == 0:
				data.aktifitas = "Anda belum mencangkul tanah"
			elif data.pohon[data.tandaSelect][0] == 1:
				data.aktifitas = "Penyangga belum dipasang"
			elif data.pohon[data.tandaSelect][0] == 2:
				data.aktifitas = "Bibit belum ditanam"
			elif data.pohon[data.tandaSelect][0] == 3:
				if data.pohon[data.tandaSelect][3] == 1:
					data.aktifitas = "Memberi Pupuk Organik"
					tahap = 3
					data.pohon[data.tandaSelect][3] = 1
					pupuk.show()
					data.pupuk -= 1
					data.pohon[data.tandaSelect][0] = tahap
				else:
					data.aktifitas = "Pohon ini sudah diberi pupuk"
# -------------------------------------------------- Memberi Pupuk
# -------------------------------------------------- Memberi Air
	if data.pilihAlat == "air":
		if data.air == 0:
			data.aktifitas = "Persediaan air habis"
		else:
			if data.pohon[data.tandaSelect][0] == 0:
				data.aktifitas = "Anda belum mencangkul tanah"
			elif data.pohon[data.tandaSelect][0] == 1:
				data.aktifitas = "Penyangga belum dipasang"
			elif data.pohon[data.tandaSelect][0] == 2:
				data.aktifitas = "Bibit belum ditanam"
			elif data.pohon[data.tandaSelect][0] == 3:
				if data.pohon[data.tandaSelect][2] >0:
					data.aktifitas = "Pohon ini sudah disiram"
				elif data.pohon[data.tandaSelect][2] <=0:
					data.aktifitas = "Menyiram Pohon"
					popupButuhAir.hide()
					data.air -= 1
					tahap = 3
					data.pohon[data.tandaSelect][2] = 100
					print("Jumlah Air " +String(data.pohon[data.tandaSelect][2]))
					data.pohon[data.tandaSelect][0] = tahap
# -------------------------------------------------- Memberi Air
# -------------------------------------------------- Panen
	if data.pilihAlat == "celurit":
		if data.pohon[data.tandaSelect][5] <= 0:
			data.aktifitas = "Belum bisa Panen"
		else:
			data
# -------------------------------------------------- Panen

#	data.pohon[data.tandaSelect][0] = tahap
	if data.pohon[data.tandaSelect][0] >= 3:
		if data.pohon[data.tandaSelect][2] <= 0:
			popupButuhAir.show()
		elif data.pohon[data.tandaSelect][2] > 0:
			popupButuhAir.hide()
	


