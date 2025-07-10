extends Node

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/kumpulan_doa/doa1.tscn")

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/kumpulan_doa/doa2.tscn")

func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/kumpulan_doa/doa3.tscn")

func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/kumpulan_doa/doa4.tscn")

func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/kumpulan_doa/doa5.tscn")

func _on_buttonkembali_pressed():
	get_tree().change_scene_to_file("res://scenes/Main.tscn")
