import 'package:kurs2_sabak6/question/question.dart';

class QuestionRepository {
  int index = 0;

  List<Question> questions = [
    Question(question: 'Бишкек Кыргызстандын борборубу?', answer: true), //0
    Question(question: 'Манас баатыр болгонбу?', answer: true), //1
    Question(question: 'Ч.Айтматов жазуучубу?', answer: true), //2
    Question(question: 'Талас облусу Оштобу?', answer: false), //3
    Question(question: 'Жакып Чубактын атасыбы?', answer: false), //4
    Question(question: 'Cонуна чыкты', answer: true), //5
  ];

  bool checkAsnwer(bool answer) {
    return answer == questions[index].answer;
  }

  bool isLastQuestion() {
    return questions[questions.length - 2].question ==
        questions[index].question;
  }

  bool isFinished() {
    return index >= questions.length - 1;
  }

  void nextQuestion() {
    if (index < questions.length - 1) {
      index++;
    }
  }

  String getQuestion() {
    return questions[index].question;
  }

  void reset() {
    index = 0;
  }
}

final QuestionRepository questionBrain = QuestionRepository();
