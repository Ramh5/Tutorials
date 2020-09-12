extends Control

onready var inventoryUI = $InventoryUI
onready var addProductButton = $AddProductButton
onready var removeProductButton = $RemoveProductButton
onready var productNameLineEdit = $ProductNameLineEdit
onready var copyButton = $CopyButton
onready var copyLineEdit = $CopyLineEdit


var game:Game

var selected_index = -1

func init(_game):
	game = _game
	refresh_InventoryUI()


func refresh_InventoryUI():
	selected_index = -1
	inventoryUI.clear()
	for product in game.inventory.products:
		inventoryUI.add_item(str(product))


func _on_AddProductButton_pressed():
	var product = Product.new(productNameLineEdit.text, 100 * randf(),
					 randi() % 100 + 1)
	game.inventory.add_product(product)
	refresh_InventoryUI()


func _on_RemoveProductButton_pressed():
	if selected_index != -1:
		game.inventory.remove_product(selected_index)
		refresh_InventoryUI()


func _on_InventoryUI_item_selected(index):
	selected_index = index


func _on_CopyButton_pressed():
	copyLineEdit.text = str(game.inventory)


