extends Node

const SAVE_PATH = "user://savegame.bin"
const SAVE_PASSWORD = "password"

func get_file(is_writable: bool):
	var save = File.new()
	var password: String = SAVE_PASSWORD
	
	if is_writable:
		save.open_enc
