import 'package:flutter/material.dart';

class AboutQuizzPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/bg_fix.png"), // Gambar latar belakang
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 100, // Sesuaikan posisi bagian atas sesuai kebutuhan
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset('assets/images/about.png'), // Gambar logo
            ),
          ),
          Positioned(
            bottom: 290, // Sesuaikan posisi bagian bawah sesuai kebutuhan
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context); // Navigasi kembali ke halaman sebelumnya
                },
                child: Text(
                  'Back', // Teks tombol
                  style: TextStyle(
                      color: Colors.blue[
                          900]), // Mengatur warna teks menjadi biru yang paling gelap
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
