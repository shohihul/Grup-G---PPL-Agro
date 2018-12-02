extends Area2D

onready var nama = get_node("tempatNama")

func _ready():
	nama.set_text(String(data.nama))