# 🌟 Pengenalan Row & Column di Flutter

Flutter menyediakan **widget layout** yang fleksibel untuk menata tampilan: **Row** dan **Column**.  
Kedua widget ini digunakan untuk menempatkan widget lain secara **horizontal** (Row) atau **vertikal** (Column).


## 📌 Tentang Proyek

**Nama Proyek:** row_and_column  
**Deskripsi:** Proyek ini belajar tentang penggunaan **Row** dan **Column** untuk menata UI di Flutter.


## 📐 Row & Column

| Widget     | Fungsi Utama                                  |
|------------|-----------------------------------------------|
| **Row**    | Menyusun widget secara **horizontal**        |
| **Column** | Menyusun widget secara **vertikal**          |

Kamu bisa mengatur posisi anak widget menggunakan properti seperti:

- `mainAxisAlignment` → mengatur posisi sepanjang sumbu utama (horizontal untuk Row, vertikal untuk Column)  
- `crossAxisAlignment` → mengatur posisi sepanjang sumbu silang  


## 💻 Contoh Kode

Berikut contoh penggunaan **Row** dan **Column**:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Row & Column Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.red, size: 40),
                  SizedBox(width: 10),
                  Icon(Icons.star, color: Colors.green, size: 40),
                  SizedBox(width: 10),
                  Icon(Icons.star, color: Colors.blue, size: 40),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Ini adalah contoh Column dengan Row di dalamnya!',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
