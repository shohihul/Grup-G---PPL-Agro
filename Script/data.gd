extends Node

var coin = 1500
var idBarang = 0
var jumlah
var pilihAlat = null
var pilihJenisBibit
var jenisBarang



var air = 0 # 1
var sekop = 0 # 2
var gunting = 0 # 3
var pupuk = 0 # 4
var sertifikat = 0 # 5
var penyangga = 0 # 6
var bibitPutih = 0 # 7
var bibitMerah = 0 # 8
var bibitKuning = 0 # 9

var tandaSelect
#var pohon = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
#tahap, jenisBibit, kadarAir
var pohon = [
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
[0,0,0],
]
#func _ready():
	
#	for i in range(16):
#	    pohon[i]=[]
#	    for j in range(2): #tahap,tipeBibit
#	        pohon[i][j]=0
