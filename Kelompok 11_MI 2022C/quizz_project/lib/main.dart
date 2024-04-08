import 'package:flutter/material.dart';
import 'kartu_nama.dart'; // Import file kartu_nama.dart
import 'menu_page.dart'; // Import file menu_page.dart
import 'start_page.dart'; // Import file start_page.dart
import 'about_page.dart'; // Import file about_page.dart

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qwees App', // nama aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Mengubah primarySwatch ke warna biru
      ),
      home: MainMenu(), // Halaman utama aplikasi
      routes: {
        '/start': (context) => StartPage(), // Rute untuk halaman start
        '/about': (context) => AboutPage(), // Rute untuk halaman about
        '/kartu_nama': (context) =>
            KartuNamaApp(), // Menambahkan rute untuk KartuNamaApp
      },
    );
  }
}
