extends Node2D

func _ready():
	var anim = $AnimationPlayer
	var track = anim.get_animation("intro_sequence")
	if not track:
		anim.add_animation("intro_sequence", Animation.new())
		track = anim.get_animation("intro_sequence")

	var gambar_list = [$gambar1, $gambar2, $gambar3]
	for i in range(gambar_list.size()):
		var g = gambar_list[i]
		var start = i * 4.0
		track.add_track(Animation.TYPE_VALUE)
		track.track_set_path(track.get_track_count() - 1, g.get_path().to_subpath("modulate:a"))
		var t = track.get_track_count() - 1
		track.track_insert_key(t, start + 0.0, 0.0)
		track.track_insert_key(t, start + 1.0, 1.0)
		track.track_insert_key(t, start + 3.0, 1.0)
		track.track_insert_key(t, start + 4.0, 0.0)

	anim.play("intro_sequence")
