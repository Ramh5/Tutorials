extends Reference
class_name ProductData

var productEnum:int
var name:String
var aging_rate:int
var description:String

func _init(_productEnum:int, _name:String, _aging_rate:int, _description:String):
	productEnum = _productEnum
	name = _name
	aging_rate = _aging_rate
	description = _description
