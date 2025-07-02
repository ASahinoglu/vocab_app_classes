class ProgressStats {
  final int totalPoints;
  final int wordsLearned;
  final double quizSuccessRate; // z. B. 0.87 = 87%
  final Duration totalTime;

  ProgressStats({
    required this.totalPoints,
    required this.wordsLearned,
    required this.quizSuccessRate,
    required this.totalTime,
  });
}
