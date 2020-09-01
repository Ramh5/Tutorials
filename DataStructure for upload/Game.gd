extends Control

var day:int = 1
var inventory:Array

func _ready():
	inventory.append(Product.new(DB.productDB.data[ProductDB.TURNIP], 10, day, 50))
	inventory.append(Product.new(DB.productDB.data[ProductDB.POTATO], 5, day, 50))
	inventory.append(Product.new(DB.productDB.data[ProductDB.APPLE], 5, day, 50))

	display_inventory()
	next_day()
	display_inventory()


func next_day():
	day += 1
	update_inventory()


func update_inventory():
	for product in inventory:
		product.update_freshness(day)


func display_inventory():
	for product in inventory:
		print(product)
