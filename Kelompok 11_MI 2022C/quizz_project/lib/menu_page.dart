import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Widget untuk menampilkan halaman utama aplikasi
class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'), // Judul halaman
        actions: [
          IconButton(
            icon: Icon(Icons.person,
                size: 38, color: Colors.yellow[600]), // Tombol profil pengguna
            onPressed: () {
              Navigator.pushNamed(
                  context, '/kartu_nama'); // Navigasi ke halaman kartu nama
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background image
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
            top: 120, // Penyesuaian posisi atas sesuai kebutuhan
            left: 15,
            right: 0,
            child: Center(
              child: Image.asset('assets/images/logo3.png'), // Logo aplikasi
            ),
          ),
          Positioned(
            bottom: 150, // Penyesuaian posisi bawah sesuai kebutuhan
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150, // Penyesuaian lebar sesuai kebutuhan
                  height: 40, // Penyesuaian tinggi sesuai kebutuhan
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/start'); // Navigasi ke halaman mulai
                    },
                    child: Text(
                      'Start', // Teks tombol mulai
                      style: TextStyle(
                          color: Colors.blue[
                              900]), // Mengubah warna teks menjadi biru tua
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 150, // Penyesuaian lebar sesuai kebutuhan
                  height: 40, // Penyesuaian tinggi sesuai kebutuhan
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/about'); // Navigasi ke halaman tentang
                    },
                    child: Text(
                      'About', // Teks tombol tentang
                      style: TextStyle(
                          color: Colors.blue[
                              900]), // Mengubah warna teks menjadi biru tua
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 150, // Penyesuaian lebar sesuai kebutuhan
                  height: 40, // Penyesuaian tinggi sesuai kebutuhan
                  child: ElevatedButton(
                    onPressed: () {
                      SystemNavigator.pop(); // Menutup aplikasi
                    },
                    child: Text(
                      'Exit', // Teks tombol keluar
                      style: TextStyle(
                          color: Colors.blue[
                              900]), // Mengubah warna teks menjadi biru tua
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
