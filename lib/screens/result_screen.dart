import 'package:flutter/material.dart';
import '../data/results_store.dart';
import '../screens/main_screen.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final int total;
  final String topic;

  const ResultScreen({
    super.key,
    required this.score,
    required this.total,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle,
              size: 100,
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            const Text(
              "Quiz Completed!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Topic: $topic",
              style: const TextStyle(
                color: Colors.deepPurple,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Your Score",
              style: TextStyle(color: Colors.grey[600]),
            ),
            Text(
              "$score / $total",
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                ResultsStore().addResult(
                  topic: topic,
                  score: score,
                  total: total,
                );

                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                  (route) => false,
                );
              },
              icon: const Icon(Icons.home),
              label: const Text("Back to Topics"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
