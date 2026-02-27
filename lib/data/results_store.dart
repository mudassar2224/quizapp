

class QuizResult {
  final String topic;
  final int score;
  final int total;

  QuizResult({
    required this.topic,
    required this.score,
    required this.total,
  });
}

class ResultsStore {
  static final ResultsStore _instance = ResultsStore._internal();

  factory ResultsStore() => _instance;

  ResultsStore._internal();

  final List<QuizResult> _results = [];

  List<QuizResult> get results => List.unmodifiable(_results);

  void addResult({required String topic, required int score, required int total}) {
    _results.add(QuizResult(topic: topic, score: score, total: total));
    // Notify listeners if you ever add a ChangeNotifier later
  }
}
