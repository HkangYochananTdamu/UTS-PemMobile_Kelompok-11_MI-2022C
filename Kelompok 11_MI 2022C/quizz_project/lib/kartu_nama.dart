import 'package:flutter/material.dart';

// Widget untuk menampilkan halaman Kartu Nama Pengembang
class KartuNamaApp extends StatelessWidget {
  const KartuNamaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Pengembang'), // Judul halaman
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Tombol kembali
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Menampilkan kartu profil untuk setiap pengembang
            Kartu(
              nama: 'Farida Muthiah Fathin', // Nama pengembang
              instagram: '@faridaamuthiah', // Akun Instagram pengembang
              backgroundImage: AssetImage(
                  'assets/images/farida.jpg'), // Gambar latar belakang kartu
              jobDeck: 'Data Analyst', // Posisi pekerjaan pengembang
            ),
            Kartu(
              nama: 'Lady Cristal Beauty Aqluilera', // Nama pengembang
              instagram: '@crstl_aq', // Akun Instagram pengembang
              backgroundImage: AssetImage(
                  'assets/images/lady.jpg'), // Gambar latar belakang kartu
              jobDeck: 'UI/UX Designer', // Posisi pekerjaan pengembang
            ),
            Kartu(
              nama: 'Khofifah Wulandari', // Nama pengembang
              instagram: '@khof.ifah_04', // Akun Instagram pengembang
              backgroundImage: AssetImage(
                  'assets/images/fa1.jpg'), // Gambar latar belakang kartu
              jobDeck: 'Software Engineer', // Posisi pekerjaan pengembang
            ),
          ],
        ),
      ),
    );
  }
}

// Widget untuk menampilkan kartu profil pengembang
class Kartu extends StatelessWidget {
  final String nama;
  final String instagram;
  final AssetImage backgroundImage;
  final String jobDeck;

  const Kartu({
    Key? key,
    required this.nama,
    required this.instagram,
    required this.backgroundImage,
    required this.jobDeck,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.indigo,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Menampilkan foto profil pengembang
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.purple,
                      Colors.pink,
                    ],
                  ),
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: backgroundImage,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                nama, // Menampilkan nama pengembang
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Merienda',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              // Menampilkan akun Instagram pengembang
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.pink,
                          Colors.purple,
                        ],
                      ).createShader(bounds);
                    },
                    child: Image.asset(
                      'assets/images/instagram.png', // Logo Instagram
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    instagram, // Menampilkan akun Instagram pengembang
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                jobDeck, // Menampilkan posisi pekerjaan pengembang
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
