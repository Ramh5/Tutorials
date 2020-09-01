extends Reference


class_name Product

var productData:ProductData
var quantity:int
var day_created:int
var freshness:int



func _init(_productData, _quantity:int, _day_created:int, _freshness:int):
	productData = _productData
	quantity = _quantity
	day_created = _day_created
	freshness = _freshness



func update_freshness(day:int):
	freshness -= productData.aging_rate*(day- day_created)


func _to_string():
	return "%d %s freshness: %d" % [quantity, productData.name, freshness]
