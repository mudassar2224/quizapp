import 'package:flutter/material.dart';
import '../models/question_model.dart';
import '../screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  final Category category;
  const QuizScreen({super.key, required this.category});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int questionIndex = 0;
  int score = 0;

  void answerQuestion(int selectedIndex) {
    if (selectedIndex ==
        widget.category.questions[questionIndex].correctAnswerIndex) {
      score++;
    }
    if (questionIndex < widget.category.questions.length - 1) {
      setState(() => questionIndex++);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            score: score,
            total: widget.category.questions.length,
            topic: widget.category.name,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.category.questions[questionIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: (questionIndex + 1) / widget.category.questions.length,
              backgroundColor: Colors.grey[200],
              color: Colors.deepPurple,
            ),
            const SizedBox(height: 20),
            Text(
              "Question ${questionIndex + 1}/${widget.category.questions.length}",
              style: const TextStyle(
                color: Colors.deepPurple,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Column(
                children: [
                  Text(
                    question.questionText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  ...List.generate(
                    question.options.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 60),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                            side: BorderSide(
                              color: Colors.deepPurple.withOpacity(0.3),
                            ),
                          ),
                          elevation: 2,
                        ),
                        onPressed: () => answerQuestion(index),
                        child: Text(
                          question.options[index],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
