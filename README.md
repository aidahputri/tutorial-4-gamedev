# Tutorial 6: Menu & In-Game GUI

![Level 1]({2ED80A75-616F-47AF-97ED-7B4CCEE3B4D4}.png)

![Level 2]({60887040-52F2-4E58-B74A-AF0EA09C53D9}.png)

## Implementasi

### Tombol pada layar game over untuk kembali ke menu utama.

![Game Over]({A3FE2FEE-9C57-4F47-B572-A89006CAB36E}.png)

1. Tambah node Button di scene `GameOver.tscn`.
2. Hubungkan tombol ke fungsi `_on_main_menu_button_pressed()`.
3. Gunakan `change_scene_to_file()` untuk kembali ke MainMenu.

### Fitur Select Stage (yang konon sudah ada button-nya di main menu namun tidak dihiraukan).

![Main Menu]({371180A7-4392-4B83-A154-15DEDF9D6EA1}.png)
![Select Stage]({B36F2FB4-7D48-4F25-B3D2-678937DDCB8E}.png)

1. Tambahkan scene `SelectStage.tscn` di MainMenu.
2. Buat tombol untuk tiap level (misalnya: Level1, Level2).
3. Gunakan parameter level agar fungsi dapat digunakan untuk berbagai level.

### Layar dan efek transisi antar level, dari level 1 ke level 2.

1. Tambahkan `AnimationPlayer` di level untuk animasi `fade_out`.
2. Panggil animasi saat transisi menggunakan `change_level()`.
3. Gunakan await untuk menunggu animasi selesai sebelum pindah scene.

## Referensi
- [Godot 4 Documentation](https://docs.godotengine.org/en/stable/)
- [Pixel Adventure Assets](https://pixelfrog-assets.itch.io/pixel-adventure-1)