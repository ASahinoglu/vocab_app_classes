// Datei: database/mock_database_repository.dart

import 'database_repository.dart';
import '../models/app_user.dart';
import '../models/word_card.dart';
import '../models/learned_word_status.dart';
import '../models/quiz_result.dart';
import '../models/quiz_question.dart';
import '../models/learning_goal.dart';

class MockDatabaseRepository implements DatabaseRepository {
  final List<AppUser> _users = [];
  final List<WordCard> _wordCards = [];
  final List<LearnedWordStatus> _learnedStatuses = [];
  final List<QuizResult> _quizResults = [];
  final List<LearningGoal> _learningGoals = [];

  @override
  void createUser(AppUser user) {
    _users.add(user);
  }

  @override
  AppUser? getUser(String userId) {
    try {
      return _users.firstWhere((u) => u.id == userId);
    } catch (e) {
      return null;
    }
  }

  @override
  void updateUser(AppUser user) {
    _users.removeWhere((u) => u.id == user.id);
    _users.add(user);
  }

  @override
  void deleteUser(String userId) {
    _users.removeWhere((u) => u.id == userId);
  }

  @override
  void addWordCard(WordCard wordCard) {
    _wordCards.add(wordCard);
  }

  @override
  List<WordCard> getWordCards(String userId) {
    return _wordCards.where((w) => w.userId == userId).toList();
  }

  @override
  void updateWordCard(WordCard wordCard) {
    _wordCards.removeWhere((w) => w.id == wordCard.id);
    _wordCards.add(wordCard);
  }

  @override
  void deleteWordCard(String wordId) {
    _wordCards.removeWhere((w) => w.id == wordId);
  }

  @override
  void updateLearnedWordStatus(LearnedWordStatus status) {
    _learnedStatuses.removeWhere(
      (s) => s.wordId == status.wordId && s.userId == status.userId,
    );
    _learnedStatuses.add(status);
  }

  @override
  LearnedWordStatus? getLearnedWordStatus(String wordId, String userId) {
    try {
      return _learnedStatuses.firstWhere(
        (s) => s.wordId == wordId && s.userId == userId,
      );
    } catch (e) {
      if (e is StateError) return null;
      rethrow;
    }
  }

  @override
  void saveQuizResult(QuizResult result) {
    _quizResults.add(result);
  }

  @override
  List<QuizResult> getQuizResults(String userId) {
    return _quizResults.where((r) => r.userId == userId).toList();
  }

  @override
  List<QuizQuestion> getQuizQuestions(String level, String topic) {
    // Dummy-Daten zurückgeben (leere Liste)
    return [];
  }

  @override
  void saveLearningGoal(LearningGoal goal) {
    _learningGoals.removeWhere((g) => g.userId == goal.userId);
    _learningGoals.add(goal);
  }

  @override
  LearningGoal? getLearningGoal(String userId) {
    try {
      return _learningGoals.firstWhere((g) => g.userId == userId);
    } catch (e) {
      if (e is StateError) return null;
      rethrow;
    }
  }
}
