extends Control

func _on_panduan_sholat_button_pressed():
	get_tree().change_scene_to_file("res://scenes/Main.tscn")

func _on_doa_harian_button_pressed():
	get_tree().change_scene_to_file("res://scenes/doa_harian.tscn")
	
