class QuizQuestion {
  // Attribute
  String questionText;
  List<String> options;
  int correctIndex;

  // Konstruktor
  QuizQuestion(this.questionText, this.options, this.correctIndex);

  bool isCorrect(int answerIndex) {
    return answerIndex == correctIndex;
  }
}
