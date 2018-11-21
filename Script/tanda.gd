extends Button
var tanah
var tanda
var penyangga
var bibitMerah
var bibitKuning
var bibitPutih
var pupuk
var popupButuhAir


#var jenisBibit
var tahap = 0

func _ready():
	tanah = get_node("tanah")
	tanda = get_node("tanda")
	penyangga = get_node("penyangga")
	bibitMerah = get_node("bibitMerah")
	bibitKuning = get_node("bibitKuning")
	bibitPutih = get_node("bibitPutih")
	pupuk = get_node("pupuk")
	popupButuhAir = get_node("butuhAir")
	
	
#	if butuhAir == true:
#		popupButuhAir.show()
#	else:
#		popupButuhAir.hide()

#	if data.pohon[data.a] == 1:
#		tanah.show()
	

func _on_tanaman_pressed():

# -------------------------------------------------- Saat Tanah Kosong
	if data.pilihAlat == null:
			print("info tanaman")
# -------------------------------------------------- Saat Tanah Kosong

# -------------------------------------------------- Menggali tanah
	if data.pilihAlat == "sekop":
		if data.sekop == 0:
			print("Anda tidak punya sekop atau sekop anda sudah rusak")
		else:
			if data.pohon[data.tandaSelect][0] == 0:
				print("muncul tanah")
				tanah.show()
				tanda.hide()
				tahap = 1
				data.sekop -=1
			elif data.pohon[data.tandaSelect][0] == 1:
				print("tanah ini sudah dicangkul")
# -------------------------------------------------- Menggali Tanah

# -------------------------------------------------- Pemasangan Penyangga
	if data.pilihAlat == "penyangga":
		if data.penyangga == 0:
			print("Penyangga Habis")
		else:
			if data.pohon[data.tandaSelect][0] == 0:
				print("Cangkul Tanah Dulu")
			elif data.pohon[data.tandaSelect][0] == 1:
				print("memasang Penyangga")
				penyangga.show()
				tahap = 2
				data.penyangga -= 1
			elif data.pohon[data.tandaSelect][0] == 2:
				print("Penyangga telah dipasang")
# -------------------------------------------------- Pemasangan Penyangga

# -------------------------------------------------- Menanam Bibit
	if data.pilihAlat == "bibit":
		if data.pohon[data.tandaSelect][0] == 0:
			print("Cangkul Tanah Dulu")
		elif data.pohon[data.tandaSelect][0] == 1:
			print("pasang penyangga dulu")
		elif data.pohon[data.tandaSelect][0] == 2:
# ----------------------------------------------- Merah
			if data.pilihJenisBibit == 1:
				if data.bibitMerah == 0:
					print("Bibit Merah Anda Habis")
				else:
					bibitMerah.show()
					tahap = 3
					data.pohon[data.tandaSelect][1] = 0
					data.bibitMerah -= 1
# ----------------------------------------------- Kuning
			if data.pilihJenisBibit == 2:
				if data.bibitKuning == 0:
					print("Bibit Kuning Anda Habis")
				else:
					bibitKuning.show()
					tahap = 3
					data.pohon[data.tandaSelect][1] = 0
					data.bibitKuning -= 1
# ----------------------------------------------- Putih
			if data.pilihJenisBibit == 3:
				if data.bibitPutih == 0:
					print("Bibit Putih Anda Habis")
				else:
					bibitPutih.show()
					tahap = 3
					data.pohon[data.tandaSelect][1] = 0
					data.bibitPutih -= 1
			data.pohon[data.tandaSelect][1] = data.pilihJenisBibit
		elif tahap == 3:
			print("Tanam Bibit Ditempat Lain")
			
		
			
# -------------------------------------------------- Menanam Bibit
	
# -------------------------------------------------- Memberi Pupuk
	if data.pilihAlat == "pupuk":
		if data.pupuk == 0:
			print("Pupuk Anda Habis")
		else:
			if data.pohon[data.tandaSelect][0] == 0:
				print("Cangkul Tanah Dulu")
			elif data.pohon[data.tandaSelect][0] == 1:
				print("pasang penyangga dulu")
			elif data.pohon[data.tandaSelect][0] == 2:
				print("Tanam Bibit dulu")
			elif data.pohon[data.tandaSelect][0] == 3:
				print("Diberi Pupuk")
				pupuk.show()
				data.pupuk -= 1
# -------------------------------------------------- Memberi Pupuk
# -------------------------------------------------- Memberi Air
	if data.pilihAlat == "air":
		if data.air == 0:
			print("Persediaan Air Habis")
		else:
			if data.pohon[data.tandaSelect][0] == 0:
				print("Cangkul Tanah Dulu")
			elif data.pohon[data.tandaSelect][0] == 1:
				print("pasang penyangga dulu")
			elif data.pohon[data.tandaSelect][0] == 2:
				print("Tanam Bibit dulu")
			elif data.pohon[data.tandaSelect][0] == 3:
				if data.pohon[data.tandaSelect][2] >0:
					print("Pohon Sudah Disiram")
				elif data.pohon[data.tandaSelect][2] <=0:
					print("Disiram Air")
					popupButuhAir.hide()
					data.air -= 1
					data.pohon[data.tandaSelect][2] = 100
# -------------------------------------------------- Memberi Air

	data.pohon[data.tandaSelect][0] = tahap
	if data.pohon[data.tandaSelect][0] >= 3:
		if data.pohon[data.tandaSelect][2] <= 0:
			popupButuhAir.show()
		elif data.pohon[data.tandaSelect][2] > 0:
			popupButuhAir.hide()
	

