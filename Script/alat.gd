extends Node2D


var airSelected
var sekopSelected
var celuritSelected
var penyanggaSelected
var bibitMerahSelected
var bibitKuningSelected
var bibitPutihSelected
var pupukSelected


func _ready():
	sekopSelected = get_node("sekop/sekopSelected")
	celuritSelected = get_node("celurit/celuritSelected")
	penyanggaSelected = get_node("penyangga/penyanggaSelected")
	bibitMerahSelected = get_node("bibitMerah/bibitMerahSelected")
	bibitKuningSelected = get_node("bibitKuning/bibitKuningSelected")
	bibitPutihSelected = get_node("bibitPutih/bibitPutihSelected")
	pupukSelected = get_node("pupuk/pupukSelected")
	airSelected = get_node("air/airSelected")
	
# ----------------------------------- Tombol Sekop
func _on_sekop_pressed():
	sekopSelected.show()
	data.pilihAlat = "sekop"
	
	penyanggaSelected.hide()
	bibitMerahSelected.hide()
	bibitKuningSelected.hide()
	bibitPutihSelected.hide()
	pupukSelected.hide()
	celuritSelected.hide()
	airSelected.hide()

func _on_sekopSelected_pressed():
	sekopSelected.hide()
	data.pilihAlat = null
# ----------------------------------- Tombol Sekop

# ----------------------------------- Tombol Celurit
func _on_celurit_pressed():
	celuritSelected.show()
	data.pilihAlat = "celurit"
	
	penyanggaSelected.hide()
	bibitMerahSelected.hide()
	bibitKuningSelected.hide()
	bibitPutihSelected.hide()
	pupukSelected.hide()
	sekopSelected.hide()
	airSelected.hide()

func _on_celuritSelected_pressed():
	celuritSelected.hide()
	data.pilihAlat = null
# ----------------------------------- Tombol Celurit

# ----------------------------------- Tombol Bibit Merah
func _on_bibitMerah_pressed():
	bibitMerahSelected.show()
	data.pilihAlat = "bibit"
	data.pilihJenisBibit = 1

	sekopSelected.hide()
	penyanggaSelected.hide()
	bibitKuningSelected.hide()
	bibitPutihSelected.hide()
	pupukSelected.hide()
	celuritSelected.hide()
	airSelected.hide()

func _on_bibitMerahSelected_pressed():
	bibitMerahSelected.hide()
	data.pilihAlat = null
	data.jenisBibit = null
# ----------------------------------- Tombol Bibit Merah

# ----------------------------------- Tombol Bibit Kuning
func _on_bibitKuning_pressed():
	bibitKuningSelected.show()
	data.pilihAlat = "bibit"
	data.pilihJenisBibit = 2

	sekopSelected.hide()
	penyanggaSelected.hide()
	bibitMerahSelected.hide()
	bibitPutihSelected.hide()
	pupukSelected.hide()
	celuritSelected.hide()
	airSelected.hide()

func _on_bibitKuningSelected_pressed():
	bibitKuningSelected.hide()
	data.pilihAlat = null
	data.jenisBibit = null
# ----------------------------------- Tombol Bibit Kuning

# ----------------------------------- Tombol Bibit Putih
func _on_bibitPutih_pressed():
	bibitPutihSelected.show()
	data.pilihAlat = "bibit"
	data.pilihJenisBibit = 3

	sekopSelected.hide()
	penyanggaSelected.hide()
	bibitMerahSelected.hide()
	bibitKuningSelected.hide()
	pupukSelected.hide()
	celuritSelected.hide()
	airSelected.hide()

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
	celuritSelected.hide()
	airSelected.hide()

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
	celuritSelected.hide()
	airSelected.hide()

func _on_pupukSelected_pressed():
	pupukSelected.hide()
	data.pilihAlat = null
# ----------------------------------- Tombol Pupuk

# ----------------------------------- Tombol Air
func _on_air_pressed():
	airSelected.show()
	data.pilihAlat = "air"
	
	sekopSelected.hide()
	penyanggaSelected.hide()
	bibitMerahSelected.hide()
	bibitKuningSelected.hide()
	bibitPutihSelected.hide()
	celuritSelected.hide()
	pupukSelected.hide()

func _on_airSelected_pressed():
	airSelected.hide()
	data.pilihAlat = null
