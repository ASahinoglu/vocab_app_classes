class UserProgress {
  // Attribute
  int wordsLearned;
  int quizzesCompleted;
  double goalProgress;

  // Konstruktor
  UserProgress(this.wordsLearned, this.quizzesCompleted, this.goalProgress);

  void updateGoalProgress(double newProgress) {
    goalProgress = newProgress;
  }

  void incrementLearnedWords() {
    wordsLearned++;
  }

  void incrementQuizzesCompleted() {
    quizzesCompleted++;
  }
}
