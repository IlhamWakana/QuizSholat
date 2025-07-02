extends Node2D

@onready var steps = [
    {"name": "Niat", "anim": "niat", "audio": "niat.ogg"},
    {"name": "Berdiri", "anim": "berdiri", "audio": "berdiri.ogg"},
    {"name": "Rukuk", "anim": "rukuk", "audio": "rukuk.ogg"},
    {"name": "I'tidal", "anim": "itidal", "audio": "itidal.ogg"},
    {"name": "Sujud", "anim": "sujud", "audio": "sujud.ogg"},
    {"name": "Duduk", "anim": "duduk", "audio": "duduk.ogg"},
    {"name": "Salam", "anim": "salam", "audio": "salam.ogg"}
]

var current_step = 0
@onready var player = $Player
@onready var audio_player = $AudioPlayer
@onready var step_label = $UI/StepLabel

func _ready():
    show_step(current_step)

func show_step(index):
    var step = steps[index]
    player.play_animation(step["anim"])
    step_label.text = "Gerakan: " + step["name"]
    audio_player.stream = load("res://assets/audio/" + step["audio"])
    audio_player.play()

func _on_NextButton_pressed():
    current_step += 1
    if current_step < steps.size():
        show_step(current_step)
    else:
        step_label.text = "Sholat selesai. MasyaAllah!"
