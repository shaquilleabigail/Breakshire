# Breakshire Android Starter

Prototype Flutter sederhana untuk layanan ojek, pesan makanan, dan kurir.

## Isi
- Beranda Breakshire
- Form pesanan demo untuk tiga layanan
- Riwayat pesanan sementara selama aplikasi berjalan
- Tidak memakai API key atau layanan berbayar

## Cara membangun APK
Proyek ini perlu Flutter SDK dan Android SDK. Jika hanya memakai HP Android, unggah folder ini ke repositori GitHub lalu gunakan layanan build Flutter di cloud.

Build debug:
```bash
flutter create --platforms=android,ios .
flutter pub get
flutter build apk --debug
```

File APK biasanya muncul di:
`build/app/outputs/flutter-apk/app-debug.apk`

## Batasan
Ini hanya prototype frontend. Tidak menyimpan data secara permanen, tidak memiliki backend, akun pelanggan/mitra, peta, penugasan driver, atau pembayaran nyata.
