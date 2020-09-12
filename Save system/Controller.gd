extends Node

var save_path = "user://save.txt"

onready var game = Game.new()
onready var GUI = $GUI

func _ready():
	GUI.init(game)


func save_game():
	var save_data = game.save_data()
	var save_file = File.new()
	var err = save_file.open(save_path, File.WRITE)
	if err == OK:
		save_file.store_string(JSONBeautifier.beautify_json(
			to_json(save_data)))
	else:
		print("error saving")
	save_file.close()


func load_game():
	var load_file = File.new()
	var err = load_file.open(save_path, File.READ)
	if err == OK:
		game.load_data(parse_json(load_file.get_as_text()))
	else:
		print("error loading")
	load_file.close()
	GUI.init(game)



