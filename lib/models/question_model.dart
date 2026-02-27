class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });
}

class Category {
  final String name;
  final String icon;
  final List<Question> questions;

  Category({
    required this.name,
    required this.icon,
    required this.questions,
  });
}
