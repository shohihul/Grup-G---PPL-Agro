extends Node2D

#var Steam = Steamworks.new()
#var MySQL = M_Mysql.new() 


onready var popup = get_node("popup")
onready var pesan = get_node("popup/pesan")
var isiPesan
onready var db = get_node("PMSConnector")
func _ready():
#	db.pmsc_connect("localhost","root","","naga","post")
#	Steam.init()
	pass

func _on_toko_pressed():
	get_tree().change_scene('res://Scene/toko.tscn')
	


func _on_gudang_pressed():
	get_tree().change_scene('res://Scene/gudang.tscn')


func _on_lahanTanam_pressed():
	if data.sertifikat == 1:
		get_tree().change_scene('res://Scene/lahan1.tscn')
	else:
		isiPesan = "Anda Belum Mempunyai Lahan"
		pesan.set_text(isiPesan)
		popup.show()


func _on_ok_pressed():
	popup.hide()


#func _on_save_pressed():
#	func save(_player,var data = {}):
#	var save_path = "res://save.json"
#	var save_dict = "data"
#	var nodes_to_save = get_tree().get_nodes_in_group("persistent")
#	save_dict[nama] = {}
#	for keys in data:
#		save_dict["%s"%nama][keys] = data[keys]
#		save_dict["player"][node.get_path()] = node.get_state()
#	print(save_dict)
#	write_file(save_path,save_dict.to_json())