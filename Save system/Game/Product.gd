extends Reference

class_name Product

var name:String
var quantity:float
var freshness:int


func _init(_name:String, _quantity:float, _freshness:int):
	name = _name
	quantity = _quantity
	freshness = _freshness


func save_data() -> Dictionary:
	var save_data = {}
	save_data["name"] = name
	save_data["quantity"] = quantity
	save_data["freshness"] = freshness
	return save_data


func load_data(save_data:Dictionary):
	name = save_data.name
	quantity = save_data.quantity
	freshness = int(save_data.freshness)


func _to_string():
	return "name: %s, #:%.1f, f: %d" % [name, quantity, freshness]
