extends Node

func _ready():
	tumbuh()
	berbuah()
	airBerkurang()
	pass
func tumbuh():
	while true:
		for i in range(16):
			if data.pohon[i][4] < 10:
				if data.pohon[i][0] == 3: #tahap
					if data.pohon[i][2] > 0: #air
						if data.pohon[i][3] == 1: #pupuk
							data.pohon[i][4] += 2
						else:
							data.pohon[i][4] += 1
		yield(utils.create_timer(2), "timeout")
		print(data.pohon)
	pass

func berbuah():
	while true:
		for i in range(16):
			if data.pohon[i][4] == 10:
				if data.pohon[i][5] < 13:
					if data.pohon[i][2] > 0: #air
						if data.pohon[i][3] == 1: #pupuk
							data.pohon[i][5] += 2
						else:
							data.pohon[i][5] += 1
		yield(utils.create_timer(5), "timeout")
		print(data.pohon)
	pass
	
func airBerkurang():
	while true:
		for i in range(16):
			if data.pohon[i][0] == 3: #tahap
				if data.pohon[i][2] <= -50:
						data.pohon[i][0] = 2
						data.pohon[i][1] = 0
						data.pohon[i][2] = 0
						data.pohon[i][3] = 0
						data.pohon[i][4] = 0
						data.pohon[i][5] = 0
				else:
					data.pohon[i][2] -=1
		yield(utils.create_timer(1), "timeout")
		print("-1")
	pass
		