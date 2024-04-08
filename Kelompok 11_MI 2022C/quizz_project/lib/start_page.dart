import 'package:flutter/material.dart';
import 'quiz_app.dart'; // Import file atau kelas yang berisi kuis

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QuizzApp(), // Menampilkan widget yang berisi kuis
      ),
    );
  }
}
