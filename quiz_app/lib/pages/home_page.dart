import 'package:flutter/material.dart';
import 'package:quiz_app/models/Question.dart';
import 'package:quiz_app/widgets/answer.dart';
import 'package:quiz_app/widgets/progress_bar.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold() - это виджет, кото
      // рый содержит набор виджетов, который представляет
      // весь UI. Он будет создавать визульный каркас, базовый
      // стиль для Material Design.
      appBar: AppBar(
        // appBar - задает строчку вверху.
        title: Text('Тестирование'),
      ),
      body: Container(
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
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                data.questions[_questionIndex].title,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            ...data.questions[_questionIndex].answers.map(
              (value) => Answer(
                title: value['answer'],
                onChangeAnswer: _onChangeAnswer,
                isCorrect: value.containsKey('isCorrect') ? true : false,
              )
            ).toList(),
          ],
        ),
      ),
    );
  }
}
