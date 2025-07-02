class LearnedWordStatus {
  final String userId;
  final String wordId;
  final bool isLearned;
  final int timesShown;
  final int timesMarkedForRepetition;

  LearnedWordStatus({
    required this.userId,
    required this.wordId,
    this.isLearned = false,
    this.timesShown = 0,
    this.timesMarkedForRepetition = 0,
  });
}
