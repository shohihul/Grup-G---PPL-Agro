extends Node2D

var air
var sekopSelected
var penyanggaSelected
var bibitMerahSelected
var bibitKuningSelected
var bibitPutihSelected
var pupukSelected


func _ready():
	sekopSelected = get_node("sekop/sekopSelected")
	penyanggaSelected = get_node("penyangga/penyanggaSelected")
	bibitMerahSelected = get_node("bibitMerah/bibitMerahSelected")
	bibitKuningSelected = get_node("bibitKuning/bibitKuningSelected")
	bibitPutihSelected = get_node("bibitPutih/bibitPutihSelected")
	pupukSelected = get_node("pupuk/pupukSelected")

# ----------------------------------- Tombol Sekop
func _on_sekop_pressed():
	sekopSelected.show()
	data.pilihAlat = "sekop"
	
	penyanggaSelected.hide()
	bibitMerahSelected.hide()
	bibitKuningSelected.hide()
	bibitPutihSelected.hide()
	pupukSelected.hide()

func _on_sekopSelected_pressed():
	sekopSelected.hide()
	data.pilihAlat = null
# ----------------------------------- Tombol Sekop

# ----------------------------------- Tombol Bibit Merah
func _on_bibitMerah_pressed():
	bibitMerahSelected.show()
	data.pilihAlat = "bibit"
	data.jenisBibit = 1

	sekopSelected.hide()
	penyanggaSelected.hide()
	bibitKuningSelected.hide()
	bibitPutihSelected.hide()
	pupukSelected.hide()

func _on_bibitMerahSelected_pressed():
	bibitMerahSelected.hide()
	data.pilihAlat = null
	data.jenisBibit = null
# ----------------------------------- Tombol Bibit Merah

# ----------------------------------- Tombol Bibit Kuning
func _on_bibitKuning_pressed():
	bibitKuningSelected.show()
	data.pilihAlat = "bibit"
	data.jenisBibit = 2

	sekopSelected.hide()
	penyanggaSelected.hide()
	bibitMerahSelected.hide()
	bibitPutihSelected.hide()
	pupukSelected.hide()

func _on_bibitKuningSelected_pressed():
	bibitKuningSelected.hide()
	data.pilihAlat = null
	data.jenisBibit = null
# ----------------------------------- Tombol Bibit Kuning

# ----------------------------------- Tombol Bibit Putih
func _on_bibitPutih_pressed():
	bibitPutihSelected.show()
	data.pilihAlat = "bibit"
	data.jenisBibit = 3

	sekopSelected.hide()
	penyanggaSelected.hide()
	bibitMerahSelected.hide()
	bibitKuningSelected.hide()
	pupukSelected.hide()

func _on_bibitPutihSelected_pressed():
	bibitPutihSelected.hide()
	data.pilihAlat = null
	data.jenisBibit = null
# ----------------------------------- Tombol Bibit Putih

# ----------------------------------- Tombol Penyangga
# Tombol Penyangga
func _on_penyangga_pressed():
	penyanggaSelected.show()
	data.pilihAlat = "penyangga"
	
	sekopSelected.hide()
	bibitMerahSelected.hide()
	bibitKuningSelected.hide()
	bibitPutihSelected.hide()
	pupukSelected.hide()

func _on_penyanggaSelected_pressed():
	penyanggaSelected.hide()
	data.pilihAlat = null
# ----------------------------------- Tombol Penyangga

# ----------------------------------- Tombol Pupuk
func _on_pupuk_pressed():
	pupukSelected.show()
	data.pilihAlat = "pupuk"
	
	sekopSelected.hide()
	penyanggaSelected.hide()
	bibitMerahSelected.hide()
	bibitKuningSelected.hide()
	bibitPutihSelected.hide()

func _on_pupukSelected_pressed():
	pupukSelected.hide()
	data.pilihAlat = null
# ----------------------------------- Tombol Pupuk