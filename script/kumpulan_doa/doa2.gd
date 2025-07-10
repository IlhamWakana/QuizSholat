extends Control

# Referensi ke AudioStreamPlayer2D
@onready var audio = $player_audio

func _on_play_pressed() -> void:
	if audio.stream_paused:
		audio.stream_paused = false
	else:
		audio.play()

func _on_pause_pressed() -> void:
	audio.stream_paused = true

func _on_restart_pressed() -> void:
	audio.stop()
	audio.play()

func _on_kembali_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pilihan.tscn") # ganti path sesuai scene utama kamu
