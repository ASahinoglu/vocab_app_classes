class LearningWord {
  // Attribute
  String word;
  String example;
  String translation;
  String translationExample;

  bool isLearned;
  bool isMarkedForReview;

  int timesShown;
  int timesMarkedForReview;

  // Konstruktor
  LearningWord({
    required this.word,
    required this.example,
    required this.translation,
    required this.translationExample,
    this.isLearned = false,
    this.isMarkedForReview = false,
    this.timesShown = 0,
    this.timesMarkedForReview = 0,
  });

  // Methoden
  void markAsLearned() {
    isLearned = true;
    isMarkedForReview = false;
  }

  void toggleReviewMarking() {
    isMarkedForReview = !isMarkedForReview;
    if (isMarkedForReview) {
      timesMarkedForReview++;
    }
  }

  void incrementShownCounter() {
    timesShown++;
  }
}
