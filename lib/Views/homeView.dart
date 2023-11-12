import 'package:flutter/material.dart';
import 'package:quiz/quiz_brian.dart';

QuizBrain quizBrain = QuizBrain();

class HomeVeiw extends StatefulWidget {
  const HomeVeiw({super.key});

  @override
  State<HomeVeiw> createState() => _HomeVeiwState();
}

class _HomeVeiwState extends State<HomeVeiw> {
  List<Icon> scoreKeeper = [
    const Icon(Icons.check, color: Colors.green),
    const Icon(Icons.close, color: Colors.red),
  ];

  List<Icon> answers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                bool correctAnswer = quizBrain.getCorrectAnswer();

                setState(() {
                  quizBrain.nextQuestion();

                  if (correctAnswer == true) {
                    answers.add(scoreKeeper[0]);
                  } else {
                    answers.add(scoreKeeper[1]);
                  }
                });
              },
              child: const Center(
                child: Text(
                  'True',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                bool correctAnswer = quizBrain.getCorrectAnswer();

                setState(() {
                  quizBrain.nextQuestion();

                  if (correctAnswer == true) {
                    answers.add(scoreKeeper[0]);
                  } else {
                    answers.add(scoreKeeper[1]);
                  }
                });
              },
              child: const Center(
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...answers,
                // Container(
                //   child: isTrue != null && isTrue == true
                //       ? scoreKeeper[0]
                //       : scoreKeeper[1],
                // )
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
