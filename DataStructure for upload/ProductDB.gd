extends Reference

class_name ProductDB

enum {TURNIP, POTATO, APPLE}

var names = {TURNIP: "Turnip", POTATO: "Potato", APPLE: "Apple"}

var description = {
	TURNIP: "Turnip description",
	POTATO: "Potato description",
	APPLE: "Apple description"
}


var data = {}


func _init():
	_add_productData(TURNIP, 2)
	_add_productData(POTATO, 1)
	_add_productData(APPLE, 4)


func _add_productData(productEnum:int, aging_rate:int):
	data[productEnum] = ProductData.new(productEnum, names[productEnum], aging_rate, description[productEnum])
