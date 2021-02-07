import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({@required this.title, @required this.answers});
}

class QuestionData {
  final _data = [
    Question(title: 'Кем хочешь стать?', answers: [
      {
        'answer': 'Ведущим "Орла и решки". Хочу повидать мир!',
      },
      {
        'answer': 'Врачом! Спасать людей мое призвание',
      },
      {'answer': 'Пародистом, чтоб куражиться над всеми!', 'isCorrect': 1},
      {
        'answer': 'Мастером на все руки',
      },
    ]),
    Question(title: 'Продолжи фразу: "Сегодня я..."', answers: [
      {
        'answer': '...люблю всех и вся. Пойду на подвиги!"',
      },
      {
        'answer': '...уже встал и то хорошо"',
      },
      {'answer': '...пакую вещи и лечу на шабаг"', 'isCorrect': 1},
      {
        'answer': '...соберу большой рюкзак и в поход"',
      },
    ]),
    Question(title: 'Какое место больше предпочитаешь?', answers: [
      {
        'answer': 'Уютную квартирку в центре города',
      },
      {'answer': 'Темные местечки природы', 'isCorrect': 1},
      {'answer': 'В лес, на красивую опушку'},
      {'answer': 'Библиотека - дом родной'},
    ]),
    Question(title: 'Как относишься к людям?', answers: [
      {
        'answer': 'Испытываю к ним "несварения" моего характера',
      },
      {'answer': 'Фуу, терпеть не могу людишек', 'isCorrect': 1},
      {
        'answer': 'Люблю людей и мир во всем мире',
      },
      {
        'answer': 'Ни так ни сяк',
      },
    ]),
    Question(title: 'Какой цвет выберешь?', answers: [
      {
        'answer': 'Белый универсал',
      },
      {
        'answer': 'Синий',
      },
      {'answer': 'Зелёный, дягилевый, болотный цвет', 'isCorrect': 1},
      {
        'answer': 'Люблю всё розовое',
      },
    ]),
    Question(
        title:
            'Ситуация: "Лягушку прижало камнем.\nУ неё застраля лапка". Что сделаешь?',
        answers: [
          {
            'answer': 'Пройдешь мимо, будто тебя это не касается',
          },
          {
            'answer': 'Освободишь бедняжку, ещё и камню кулак покажешь',
            'isCorrect': 1
          },
          {
            'answer': 'Найдешь менее брезгливого человека и вытащишь её',
          },
          {
            'answer': 'Убегу',
          },
        ]),
    Question(title: 'Кого ты терпеть не можешь?', answers: [
      {'answer': 'Слишком умных и любопытных', 'isCorrect': 1},
      {
        'answer': 'Плохишей, они меня обижают...',
      },
      {
        'answer': 'Людей',
      },
      {
        'answer': 'Врагов народа',
      },
    ]),
    Question(title: 'А что на обед любишь?', answers: [
      {
        'answer': 'Овсянку, Сэр!',
      },
      {'answer': 'Шашлычок и лучок', 'isCorrect': 1},
      {
        'answer': 'Окрошку',
      },
      {
        'answer': 'Борщец, ммм...',
      },
    ]),
    Question(title: 'Кто твой любимый сказочный герой?', answers: [
      {
        'answer': 'Серый волк',
      },
      {
        'answer': 'Василиса Премудрая',
      },
      {'answer': 'Баба Яга', 'isCorrect': 1},
      {
        'answer': 'Кот ученый, который по цепи кругом, да-да',
      },
    ]),
  ];
  List<Question> get questions => [..._data];
}
