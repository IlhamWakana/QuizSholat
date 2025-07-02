extends Node2D

# Fungsi untuk membuat gambar gerakan sholat sederhana
func create_sholat_sprite(gerakan: String) -> Sprite2D:
	var sprite = Sprite2D.new()
	var texture = ImageTexture.new()
	var image = Image.create(128, 128, false, Image.FORMAT_RGBA8)
	
	# Warna dasar
	var bg_color = Color.DARK_BLUE
	image.fill(bg_color)
	
	# Gambar bentuk berdasarkan gerakan
	var draw_color = Color.WHITE
	
	match gerakan:
		"berdiri":
			for i in range(30, 98):
				image.set_pixel(64, i, draw_color)  # Gambar garis vertikal
		"rukuk":
			for i in range(30, 70):
				image.set_pixel(64 - (i-30)/2, i, draw_color)
				image.set_pixel(64 + (i-30)/2, i, draw_color)
		"sujud":
			for i in range(30, 60):
				image.set_pixel(64, i, draw_color)
			for i in range(40, 88):
				image.set_pixel(i, 70, draw_color)
		"duduk":
			for i in range(50, 78):
				image.set_pixel(64, i, draw_color)
			for i in range(40, 88):
				image.set_pixel(i, 80, draw_color)
	
	texture = ImageTexture.create_from_image(image)
	sprite.texture = texture
	sprite.name = gerakan + "_sprite"
	return sprite

# Fungsi untuk membuat tombol sederhana
func create_button(text: String, pos: Vector2) -> Button:
	var button = Button.new()
	button.text = text
	button.position = pos
	button.size = Vector2(150, 50)
	button.add_theme_font_size_override("font_size", 20)
	return button
	
