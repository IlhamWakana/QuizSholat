extends Node2D


func _on_mulai_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pilihan.tscn")


func _on_pengaturan_pressed() -> void:
	$CenterContainer/mainButtons.visible = false
	$CenterContainer/MenuPengaturan.visible = true


func _on_crediits_pressed() -> void:
	$CenterContainer/mainButtons.visible = false
	$CenterContainer/MenuCredits.visible = true


func _on_keluar_pressed() -> void:
	get_tree().quit()  # 



func _on_kembali_pressed() -> void:
	$CenterContainer/mainButtons.visible = true
	$CenterContainer/MenuPengaturan.visible = false
	$CenterContainer/MenuCredits.visible = false


func _on_tampilan_penuh_toggled(toggled_on: bool) -> void:
	if toggled_on :
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MINIMIZED)
