class LearningGoal {
  final String userId;
  final int dailyGoal; // z.B. 10 Wörter pro Tag
  final int weeklyGoal;
  final DateTime lastUpdated;

  LearningGoal({
    required this.userId,
    required this.dailyGoal,
    required this.weeklyGoal,
    required this.lastUpdated,
  });
}
