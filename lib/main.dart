/* 
Pada inisialisasi sebuah file baru harus mengimport material.dart karena semua komponen ada disini
 */
import 'package:flutter/material.dart';
/* 
Ini digunakan untuk mengimport halaman lain ke main
 */
import 'package:belajar_flutter/home.dart';
import 'package:belajar_flutter/about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* Inisialisasi nama aplikasi */
      title: 'Belajar',
      /* Inisialiasai Thema */
      theme: ThemeData(
        /* Properti yang digunakan untuk menginisialisasi tema seperti warna default, font */
        primarySwatch: Colors.red,
      ),
      /* Halaman default yang akan ditampilkan pada saat program pertama dijalankan */
      home: HomePage(),
      /* Membuat navigasi ke masing masing halaman */
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => HomePage(),
        '/about': (BuildContext context) => AboutPage()
      },
    );
  }
}