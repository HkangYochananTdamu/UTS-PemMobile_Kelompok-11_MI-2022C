import 'package:flutter/material.dart';
import 'quiz_screen.dart'; // Mengimpor file QuizScreen yang diperlukan

class QuizzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema utama aplikasi
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage('assets/images/bg2.png'), // Gambar latar belakang
              fit: BoxFit.cover, // Menyesuaikan gambar dengan ukuran container
            ),
          ),
          child: QuizScreen(), // Menggunakan QuizScreen sebagai halaman utama
        ),
      ),
    );
  }
}
