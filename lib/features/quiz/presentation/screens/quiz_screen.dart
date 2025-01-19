import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/features/quiz/presentation/widgets/quiz_tile.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello, 👋',
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.purple.shade100,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        // title: const Text('Quiz'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _spacer(),
            QuizTile(
              onTap: () => Navigator.pushNamed(context, '/questions'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _spacer({double? height = 20}) {
    return SizedBox(
      height: height,
    );
  }
}
