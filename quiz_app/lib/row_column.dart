import 'package:flutter/material.dart';

// Чтобы не писать каждый раз класс, можно воспользоваться shortcut'ами, стоит
// просто написать st и выбрать какой нам нужен виджет.

class MyRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Верстка теория'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.max, // mainAxisSize управляет
                                          // пространством в строке. Оно опреде
                                          // ляет сколько места строка или стол
                                          // бец могут занимать на своих основ
                                          // ных осях. .min - ужимает строку
                                          // или столбец до своих children'ов,
                                          // .max - максимизирует пространство.
          mainAxisAlignment: MainAxisAlignment.center, // mainAxisAlignment -
                                          // выравнивание элементов в строке
                                          // или столбце по главной оси.
                                          // MainAxisSize должно иметь значение
                                          // max, чтобы работал Alignment. 
          crossAxisAlignment: CrossAxisAlignment.stretch, // crossAxisAlignment  
                                                      // выравнивание элементов
                                                      // по поперечной оси.
          children: [
            ColorBox(),
            BiggerColorBox(),
            ColorBox(),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration( // decoration - задает стиль Container()
        color: Colors.redAccent, // redAccent[400] - 400 - задает тон цвета
        border: Border.all(), // border - границы
      ),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Container(
        width: 100,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.redAccent[400],
          border: Border.all(),
        ),
      );
    }
}