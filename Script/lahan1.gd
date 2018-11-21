extends Node2D

var titik0
var titik1
var titik2
var titik3
var titik4
var titik5
var titik6
var titik7
var titik8
var titik9
var titik10
var titik11
var titik12
var titik13
var titik14
var titik15




func _ready():
	titik0 = get_node("1")
	titik1 = get_node("2")
	titik2 = get_node("3")
	titik3 = get_node("4")
	titik4 = get_node("5")
	titik5 = get_node("6")
	titik6 = get_node("7")
	titik7 = get_node("8")
	titik8 = get_node("9")
	titik9 = get_node("10")
	titik10 = get_node("11")
	titik11 = get_node("12")
	titik12 = get_node("13")
	titik13 = get_node("14")
	titik14 = get_node("15")
	titik15 = get_node("16")
	
	load_data()
	
func load_data():
	for i in range(16):
		var a = get("titik"+String(i))
		#tahap
		if data.pohon[i][0] >= 1:
			a.tanah.show()
		if data.pohon[i][0] >= 2:
			a.penyangga.show()
		if data.pohon[i][0] >= 3:
			if data.pohon[i][2] <= 0:
				a.popupButuhAir.show()
			if data.pohon[i][1] == 1:
				a.bibitMerah.show()
			elif data.pohon[i][1] == 2:
				a.bibitKuning.show()
			elif data.pohon[i][1] == 3:
				a.bibitPutih.show()
#		if data.pohon[i][2] <= 0:
#			if data.pohon[i][0] >= 3:
#				a.popupButuhAir.show()


func _on_kembali_pressed():
	get_tree().change_scene('res://Scene/gameplay.tscn')


func _on_1_pressed():
	data.tandaSelect = 0
	print(data.tandaSelect)

func _on_2_pressed():
	data.tandaSelect = 1
	print(data.tandaSelect)

func _on_3_pressed():
	data.tandaSelect = 2
	print(data.tandaSelect)


func _on_4_pressed():
	data.tandaSelect = 3
	print(data.tandaSelect)


func _on_5_pressed():
	data.tandaSelect = 4
	print(data.tandaSelect)


func _on_6_pressed():
	data.tandaSelect = 5
	print(data.tandaSelect)


func _on_7_pressed():
	data.tandaSelect = 6
	print(data.tandaSelect)


func _on_8_pressed():
	data.tandaSelect = 7
	print(data.tandaSelect)


func _on_9_pressed():
	data.tandaSelect = 8
	print(data.tandaSelect)


func _on_10_pressed():
	data.tandaSelect = 9
	print(data.tandaSelect)


func _on_11_pressed():
	data.tandaSelect = 10
	print(data.tandaSelect)


func _on_12_pressed():
	data.tandaSelect = 11
	print(data.tandaSelect)


func _on_13_pressed():
	data.tandaSelect = 12
	print(data.tandaSelect)


func _on_14_pressed():
	data.tandaSelect = 13
	print(data.tandaSelect)


func _on_15_pressed():
	data.tandaSelect = 14
	print(data.tandaSelect)


func _on_16_pressed():
	data.tandaSelect = 15
	print(data.tandaSelect)
