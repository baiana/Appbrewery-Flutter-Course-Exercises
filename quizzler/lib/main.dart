import 'package:flutter/material.dart';
import 'package:quizzler/question.dart';
import 'package:quizzler/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  static Icon right = Icon(
    Icons.check,
    color: Colors.lightGreenAccent,
  );
  static Icon wrong = Icon(
    Icons.close,
    color: Colors.redAccent,
  );

  List<Icon> scoreKeeper = [];
  QuizBrain quizManager = QuizBrain();
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizManager.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                onQuestionResponse(true);
                //The user picked false.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                onQuestionResponse(false);
                //The user picked false.
              },
              onLongPress: () {
                setState(() {
                  scoreKeeper.clear();
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: scoreKeeper,
          ),
        )
      ],
    );
  }

  void onQuestionResponse(bool response) {
    setState(() {
      bool answer = quizManager.getQuestionAnswer();
      quizManager.nextQuestion(onQuizEnd: displayFinalScore);
      scoreKeeper.add(response == answer ? right : wrong);
      if (response == answer) {
        score++;
      }
    });
  }

  void displayFinalScore() {
    Alert(
        context: context,
        title: "Fim de Jogo",
        type: AlertType.success,
        desc: "Você acertou $score questões!",
        buttons: []).show();
    scoreKeeper.clear();
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
