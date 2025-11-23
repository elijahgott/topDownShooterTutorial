extends HBoxContainer

var selected_weapon = 'pistol'
var slots = get_children()

func select(i):
	if(i == 0):
		selected_weapon = 'pistol'
		slots[0].frame = 1
		slots[1].frame = 0
		slots[2].frame = 0
	elif(i == 1):
		selected_weapon = 'machine_gun'
		slots[0].frame = 0
		slots[1].frame = 1
		slots[2].frame = 0
	elif(i == 2):
		selected_weapon = 'shotgun'
		slots[0].frame = 0
		slots[1].frame = 0
		slots[2].frame = 1
