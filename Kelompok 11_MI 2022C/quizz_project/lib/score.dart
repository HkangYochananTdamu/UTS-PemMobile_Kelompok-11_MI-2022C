class Score {
  int value; // Menyimpan nilai skor

  Score({required this.value}); // Konstruktor untuk inisialisasi nilai skor

  void increment() {
    value++; // Method untuk menambah skor
  }

  void reset() {
    value = 0; // Method untuk mereset skor menjadi 0
  }

  int getScore() {
    return value; // Method untuk mendapatkan nilai skor
  }
}
