class QuizResult {
  final String userId;
  final String quizId;
  final int correctAnswers;
  final int totalQuestions;
  final DateTime date;

  QuizResult({
    required this.userId,
    required this.quizId,
    required this.correctAnswers,
    required this.totalQuestions,
    required this.date,
  });
}
