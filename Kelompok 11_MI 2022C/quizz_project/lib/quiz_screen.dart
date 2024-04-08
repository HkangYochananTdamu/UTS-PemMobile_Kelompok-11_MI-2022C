import 'dart:math'; // Import paket untuk kelas Random
import 'package:flutter/material.dart';
import 'question.dart'; // Import Question class
import 'answer_button.dart'; // Import AnswerButton class

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0; // Indeks pertanyaan saat ini
  int _score = 0; // Skor quiz

// data pertanyaan dan jawaban
  List<Question> _questions = [
    Question(
      question: '',
      imagePath: 'assets/images/q4.png',
      answers: ['Oval', 'Persegi', 'Paralelogram', 'Segitiga'],
      correctAnswer: 'Oval',
    ),
    Question(
      question: '',
      imagePath: 'assets/images/q9.png',
      answers: [
        'Sebuah angka',
        'Sebuah karakter Tunggal',
        'Sebuah urutan karakter',
        'Sebuah tipe data Boolean'
      ],
      correctAnswer: 'Sebuah urutan karakter',
    ),
    Question(
      question: '',
      imagePath: 'assets/images/q11.png',
      answers: [
        'Menyimpan data',
        'Mengulang sebuah proses',
        'Membagi kode menjadi bagian yang lebih kecil dan terorganisir',
        'Menampilkan output ke pengguna'
      ],
      correctAnswer:
          'Membagi kode menjadi bagian yang lebih kecil dan terorganisir',
    ),
    Question(
      question: '',
      imagePath: 'assets/images/q5.png',
      answers: [
        'Fungsi tersebut mengembalikan sebuah nilai',
        'Fungsi tersebut tidak mengembalikan nilai apapun',
        'Fungsi tersebut hanya bisa dipanggil sekali',
        'Fungsi tersebut adalah fungsi default'
      ],
      correctAnswer: 'Fungsi tersebut tidak mengembalikan nilai apapun',
    ),
    Question(
      question: '',
      imagePath: 'assets/images/q8.png',
      answers: ['Loop', 'Fungsi', 'Array', 'If-else'],
      correctAnswer: 'If-else',
    ),
    Question(
      question: '',
      imagePath: 'assets/images/q2.png',
      answers: [
        'Untuk mengecek kondisi',
        'Untuk mengulang sebuah blok kode sejumlah waktu tertentu',
        'Untuk menangkap kesalahan',
        'Untuk mendeklarasikan variabel'
      ],
      correctAnswer: 'Untuk mengulang sebuah blok kode sejumlah waktu tertentu',
    ),
    Question(
      question: '',
      imagePath: 'assets/images/q3.png',
      answers: ['=', '==', '+', '%'],
      correctAnswer: '==',
    ),
    Question(
      question: '',
      imagePath: 'assets/images/q7.png',
      answers: [
        'Untuk mengubah cara kerja program',
        'Untuk memberikan dokumentasi dan penjelasan dalam kode',
        'Untuk menyimpan data',
        'Untuk mempercepat eksekusi kode'
      ],
      correctAnswer: 'Untuk memberikan dokumentasi dan penjelasan dalam kode',
    ),
    Question(
      question: '',
      imagePath: 'assets/images/q6.png',
      answers: ['Oval', 'Persegi', 'Paralelogram', 'Panah'],
      correctAnswer: 'Persegi',
    ),
    Question(
      question: '',
      imagePath: 'assets/images/q10.png',
      answers: [
        'Sebuah fungsi',
        'Sebuah kumpulan nilai yang tipe datanya sama',
        'Sebuah operator',
        'Sebuah variabel'
      ],
      correctAnswer: 'Sebuah kumpulan nilai yang tipe datanya sama',
    ),
  ];

  // Method untuk menangani jawaban dari pengguna
  void answer_button(String answer) {
    if (answer == _questions[_currentQuestionIndex].correctAnswer) {
      setState(() {
        _score++; // Tambah skor jika jawaban benar
      });
    }
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++; // Pindah ke pertanyaan berikutnya
        _shuffleAnswers(); // Mengacak jawaban setiap kali pertanyaan berganti
      } else {
        _showQuizResultDialog(); // Menampilkan dialog dengan hasil quiz setelah pertanyaan terakhir
      }
    });
  }

  // Method untuk mengacak jawaban
  void _shuffleAnswers() {
    // Mengacak jawaban menggunakan algoritma Fisher-Yates
    for (int i = _questions[_currentQuestionIndex].answers.length - 1;
        i > 0;
        i--) {
      int j = Random().nextInt(i + 1);
      String temp = _questions[_currentQuestionIndex].answers[i];
      _questions[_currentQuestionIndex].answers[i] =
          _questions[_currentQuestionIndex].answers[j];
      _questions[_currentQuestionIndex].answers[j] = temp;
    }
  }

  // Method untuk menampilkan dialog hasil quiz
  void _showQuizResultDialog() {
    showDialog(
      context: context,
      barrierDismissible:
          false, // Memastikan dialog tidak dapat ditutup dengan mengetuk di luar area dialog
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Quiz Finished'),
          content: Text('Your score: $_score'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Reset score dan indeks pertanyaan untuk memulai kembali
                setState(() {
                  _score = 0;
                  _currentQuestionIndex = 0;
                });
              },
              child: Text(
                'Try Again',
                style: TextStyle(
                    color: Colors
                        .blue[900]), // Mengatur warna teks menjadi biru gelap
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text(
                'Main Menu',
                style: TextStyle(
                    color: Colors
                        .blue[900]), // Mengatur warna teks menjadi biru gelap
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _shuffleAnswers(); // Panggil _shuffleAnswers() di sini agar jawaban teracak saat pertama kali tampil
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_fix.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _questions[_currentQuestionIndex]
                  .question, // Tampilkan pertanyaan saat ini
              style: TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            if (_questions[_currentQuestionIndex].imagePath != null)
              Image.asset(
                _questions[_currentQuestionIndex].imagePath!,
                width: 350,
                height: 300,
              ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _questions[_currentQuestionIndex].answers.length,
              itemBuilder: (BuildContext context, int index) {
                String answer =
                    _questions[_currentQuestionIndex].answers[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: AnswerButton(
                    answer: answer,
                    onPressed: () => answer_button(answer),
                  ),
                );
              },
            ),
            Text(
              'Score: $_score', // Tampilkan skor saat ini
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
