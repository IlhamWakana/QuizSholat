extends Node2D

@onready var steps = [
    {"name": "Niat", "audio": "niat.ogg"},
    {"name": "Membasuh Wajah", "audio": "wajah.ogg"},
    {"name": "Membasuh Tangan", "audio": "tangan.ogg"},
    {"name": "Mengusap Kepala", "audio": "kepala.ogg"},
    {"name": "Membasuh Kaki", "audio": "kaki.ogg"},
    {"name": "Tertib", "audio": "tertib.ogg"}
]

var current_step = 0
@onready var label = $UI/StepLabel
@onready var audio_player = $AudioPlayer

func _ready():
    show_step(current_step)

func show_step(i):
    var step = steps[i]
    label.text = "Langkah: " + step["name"]
    audio_player.stream = load("res://assets/audio/wudhu/" + step["audio"])
    audio_player.play()

func _on_NextButton_pressed():
    current_step += 1
    if current_step < steps.size():
        show_step(current_step)
    else:
        label.text = "Wudhu selesai. Alhamdulillah!"
