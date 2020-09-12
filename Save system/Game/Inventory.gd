extends Reference

class_name Inventory

var products = []


func add_product(product:Product):
	products.append(product)


func remove_product(index:int):
	products.remove(index)


func save_data() -> Dictionary:
	var save_data = {}
	var products_save_data = []
	for product in products:
		products_save_data.append(product.save_data())
	
	save_data["products"] = products_save_data
	return save_data


func load_data(save_data:Dictionary):
	products.clear()
	for product_save_data in save_data["products"]:
		var product = Product.new("",0,0)
		product.load_data(product_save_data)
		products.append(product)


func _to_string():
	var string = ""
	for product in products:
		string += str(product) + "\n"
	return string
