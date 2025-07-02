import '../models/app_user.dart';
import '../models/word_card.dart';
import '../models/learned_word_status.dart';
import '../models/quiz_result.dart';
import '../models/quiz_question.dart';
import '../models/learning_goal.dart';

abstract class DatabaseRepository {
  // Benutzer
  void createUser(AppUser user);
  AppUser? getUser(String userId);
  void updateUser(AppUser user);
  void deleteUser(String userId);

  // Wörter
  void addWordCard(WordCard wordCard);
  List<WordCard> getWordCards(String userId);
  void updateWordCard(WordCard wordCard);
  void deleteWordCard(String wordId);

  // Lernstatus
  void updateLearnedWordStatus(LearnedWordStatus status);
  LearnedWordStatus? getLearnedWordStatus(String wordId, String userId);

  // Quiz
  void saveQuizResult(QuizResult result);
  List<QuizResult> getQuizResults(String userId);
  List<QuizQuestion> getQuizQuestions(String level, String topic);

  // Lernziele
  void saveLearningGoal(LearningGoal goal);
  LearningGoal? getLearningGoal(String userId);
}
