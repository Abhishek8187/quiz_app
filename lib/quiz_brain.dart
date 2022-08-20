import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question('Delhi is the capital of India', true), //object
    Question('Kohli will hit a century in next match', false),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question('SRK is the biggest actor in the world', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true)
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else
      return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
