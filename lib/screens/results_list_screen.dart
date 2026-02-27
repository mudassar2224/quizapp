import 'package:flutter/material.dart';
import '../data/results_store.dart';

class ResultsListScreen extends StatefulWidget {
  const ResultsListScreen({super.key});

  @override
  State<ResultsListScreen> createState() => _ResultsListScreenState();
}

class _ResultsListScreenState extends State<ResultsListScreen> {
  late final ResultsStore _store;

  @override
  void initState() {
    super.initState();
    _store = ResultsStore();
  }

  @override
  Widget build(BuildContext context) {
    final results = _store.results;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Results"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => setState(() {}),
          ),
        ],
      ),
      body: results.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.quiz, size: 60, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    "No quizzes completed yet.",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: results.length,
              itemBuilder: (context, index) {
                final r = results[index];
                final percent = (r.score / r.total * 100).toStringAsFixed(0);
                IconData icon = _getCategoryIcon(r.topic);

                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurple.withOpacity(0.1),
                      child: Icon(icon, color: Colors.deepPurple),
                    ),
                    title: Text(
                      r.topic,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("$percent% correct"),
                    trailing: Text(
                      "${r.score}/${r.total}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }

  IconData _getCategoryIcon(String name) {
    switch (name) {
      case "Widgets":
        return Icons.widgets;
      case "State Management":
        return Icons.settings;
      case "Dart Basics":
        return Icons.code;
      case "Navigation":
        return Icons.map;
      case "Async & HTTP":
        return Icons.http;
      default:
        return Icons.quiz;
    }
  }
}
