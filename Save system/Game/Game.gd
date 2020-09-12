extends Reference

class_name Game

var inventory:Inventory = Inventory.new()
#var calendar
#var weather
#...


func save_data() -> Dictionary:
	var save_data = {}
	save_data["Inventory"] = inventory.save_data()
	return save_data

func load_data(save_data:Dictionary):
	inventory.load_data(save_data["Inventory"])
