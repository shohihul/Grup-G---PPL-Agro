extends Area2D

onready var coin = get_node("tempat/jumlahCoin")

func _ready():
	coin.set_text("COIN = " +String(data.coin))
