// Contoh implementasi OOP 'abstraksi'
class Question {
  final String question; // Pertanyaan
  final String? imagePath; // Jalur gambar pertanyaan (opsional)
  final List<String> answers; // Daftar jawaban
  final String correctAnswer; // Jawaban yang benar

  // Konstruktor untuk inisialisasi objek Question
  Question({
    required this.question, // Parameter wajib: pertanyaan
    this.imagePath, // Parameter opsional: jalur gambar pertanyaan
    required this.answers, // Parameter wajib: daftar jawaban
    required this.correctAnswer, // Parameter wajib: jawaban yang benar
  });
}
