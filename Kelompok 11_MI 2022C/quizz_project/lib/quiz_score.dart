import 'score.dart';

// Kelas QuizScore merupakan turunan dari kelas Score
class QuizScore extends Score {
  // Konstruktor QuizScore dengan parameter value
  // Memanggil konstruktor kelas induk dengan kata kunci super
  QuizScore({required int value}) : super(value: value);

  // Method untuk mengakses properti score dari kelas induk
  int getScore() {
    return getScore(); // Mengembalikan nilai score dari kelas induk
  }
}
