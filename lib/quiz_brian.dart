import 'package:quiz/question.dart';

class QuizBrain {
  //
  int _questionNumber = 0;

  final List<Question> _quesitonsList = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approxymately one quarter of human bouns are in the feet', a: true),
    Question(q: 'A slug\'s blood is green', a: true),
    Question(q: 'Niroogah City Located in New York City', a: false),
    Question(q: 'Qom Located in Niroogah City', a: false),
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    Question(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    Question(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Question(
        q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    Question(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Question(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Question(q: 'Google was originally called \"Backrub\".', a: true),
    Question(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    Question(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];

  String getQuestionText() {
    return _quesitonsList[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _quesitonsList[_questionNumber].answer;
  }

  void nextQuestion() {
    if (_questionNumber < _quesitonsList.length - 1) {
      _questionNumber++;
    }
  }
}
