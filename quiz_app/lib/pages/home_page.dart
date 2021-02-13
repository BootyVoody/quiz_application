import 'package:flutter/material.dart';
import 'package:quiz_app/models/Question.dart';
import 'package:quiz_app/widgets/answer.dart';
import 'package:quiz_app/widgets/progress_bar.dart';
import 'package:quiz_app/widgets/quiz.dart';
import 'package:quiz_app/widgets/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState(); // Переопределяем метод
  // createState()
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = []; // иконки для прогресс бара

  void _clearState() => setState(() { // обработчик для обнуления состояний
    _questionIndex = 0;
    _countResult = 0;
    _icons = [];
  });

  // обновление состояния индекса вопросов, обновление прогресс бара
  void _onChangeAnswer(bool isCorrect) => setState(() { 
    if (isCorrect) {
      _icons.add(Icon(Icons.brightness_1, color: Color(0xFFbd27ff)));
      _countResult++;
    } else {
      _icons.add(Icon(Icons.brightness_1, color: Color(0XFF000000)));
    }

    // увеличиваем индекс вопроса для перехода к следующему вопросу
    _questionIndex += 1;
  });

  final whiteTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold() - это виджет, кото
      // рый содержит набор виджетов, который представляет
      // весь UI. Он будет создавать визульный каркас, базовый
      // стиль для Material Design.
      // appBar: AppBar(
      //   // appBar - задает строчку вверху.
      //   title: Text('Тестирование'),
      // ),
      body: SafeArea(
        child: DefaultTextStyle.merge(
          style: whiteTextStyle,
          child: Container(
            constraints: BoxConstraints.expand(), // растянет до размеров его родит
            // еля
            decoration: BoxDecoration(
              color: const Color(0xff2a375a),
              image: DecorationImage(
                image: AssetImage('assets/images/portale.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              // body - это тело нашего приложения. Container() -
              // это по большей части оформительский блок, аналог
              // div в web, может принимать границы, размеры,
              // отступы и т.д.
              children: [

                ProgressBar(
                  icons: _icons,
                  count: _questionIndex,
                  total: data.questions.length,
                ),

                _questionIndex < data.questions.length
                ? Quiz(
                  index: _questionIndex,
                  questionData: data,
                  onChangeAnswer: _onChangeAnswer,
                )
                : Result(
                  count: _countResult,
                  total: data.questions.length,
                  onClearState: _clearState,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
