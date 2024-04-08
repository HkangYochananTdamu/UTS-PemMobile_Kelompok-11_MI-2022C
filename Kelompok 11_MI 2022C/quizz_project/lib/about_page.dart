import 'package:flutter/material.dart';
import 'about_quizz.dart'; // Import file about_quizz.dart

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'), // Judul halaman
      ),
      body: Center(
        child:
            AboutQuizzPage(), // Menampilkan widget AboutQuizzPage di tengah halaman
      ),
    );
  }
}
