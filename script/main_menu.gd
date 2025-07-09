extends Node2D


func _on_mulai_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pilihan.tscn")


func _on_pengaturan_pressed() -> void:
	$CenterContainer/mainButtons.visible = false
	$CenterContainer/MenuPengaturan.visible = true
	
func _on_main_volume_changed(value):
	var db = linear_to_db(value)
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), db)

func _on_music_volume_changed(value):
	var db = linear_to_db(value)
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), db)

func _on_sfx_volume_changed(value):
	var db = linear_to_db(value)
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), db)

func _ready():
	# Atur nilai awal slider sesuai volume saat ini
	$CenterContainer/MenuPengaturan/mainHSlider.value = db_to_linear(AudioServer.get_bus_volume_db(AudioServer.get_bus_index("Master")))
	$CenterContainer/MenuPengaturan/musicHSlider.value = db_to_linear(AudioServer.get_bus_volume_db(AudioServer.get_bus_index("Music")))
	$CenterContainer/MenuPengaturan/sfxHSlider.value = db_to_linear(AudioServer.get_bus_volume_db(AudioServer.get_bus_index("SFX")))

	# Hubungkan event value_changed
	$CenterContainer/MenuPengaturan/mainHSlider.value_changed.connect(_on_main_volume_changed)
	$CenterContainer/MenuPengaturan/musicHSlider.value_changed.connect(_on_music_volume_changed)
	$CenterContainer/MenuPengaturan/sfxHSlider.value_changed.connect(_on_sfx_volume_changed)


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
