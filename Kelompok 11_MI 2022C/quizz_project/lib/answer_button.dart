import 'package:flutter/material.dart';

// Contoh implementasi OOP 'Encapsulation'
class AnswerButton extends StatelessWidget {
  final String answer; // Variabel untuk menyimpan jawaban
  final VoidCallback onPressed; // Callback yang dipanggil saat tombol ditekan

  // Konstruktor untuk menginisialisasi variabel
  AnswerButton({required this.answer, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:
          onPressed, // Menetapkan fungsi yang akan dipanggil saat tombol ditekan
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Mengatur warna latar belakang tombol
      ),
      child: Text(
        answer, // Menampilkan teks jawaban pada tombol
        textAlign: TextAlign.center, // Posisi teks di tengah tombol
        style: TextStyle(
            color: Colors.blue
                .shade900), // Mengatur warna teks menjadi biru yang paling gelap
      ),
    );
  }
}
