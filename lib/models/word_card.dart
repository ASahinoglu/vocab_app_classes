class WordCard {
  final String id;
  final String userId;
  final String word;
  final String exampleSentence;
  final String translation;
  final String translatedExample;
  final String wordType;
  final String level;

  WordCard({
    required this.id,
    required this.userId,
    required this.word,
    required this.exampleSentence,
    required this.translation,
    required this.translatedExample,
    required this.wordType,
    required this.level,
  });
}
