import 'package:flutter/material.dart'; // Material Design
import 'package:quiz_app/main_container.dart';
import 'package:quiz_app/row_column.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp()); // runApp() запускает виджет, который содержит в
                   // кучу других виджетов.
}
// Всё во Flutter является виджетом. Виджеты описывают как должен выглядеть UI
// нашего приложения. По сути Widget - это обычный класс в языке Dart, но чтобы
// он стал виджетом и смог отображать UI приложения, необходимо, чтобы он насле
// довался от одного из двух классов виджетов - это StatelessWidget (без сохране
// ния состояния) и StatefulWidget (c сохранением состаяния).

class MyApp extends StatelessWidget {
  // У каждого виджета есть главный метод build(), который будет отрисовывать и
  // строить виджет на экране. Метод build() возвращает тип Widget.
  @override
  Widget build(BuildContext context) {
    // context содержит meta информацию о
    // виджете и его положении в дереве
    // виджетов. Любой виджет может содержать
    // в себе другие виджеты.
    return MaterialApp(
      // MaterialApp() является основой для построения при
      // ложения с MaterialDesign, будет брать на себя всю
      // серьезную работу для построения UI, ортисовки и т.д.
      title: 'Quiz Application', // Параметр title задает название для прилож
      // ения.
      theme: ThemeData(
          // theme - тема приложения.
          primarySwatch: Colors.amber // primarySwatch - глобально задает тему.
          ),
      home: MyContainer(), // home root'вый виджет.
    );
  }
}

class HomePage extends StatelessWidget {
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
        // body - это тело нашего приложения. Container() -
        // это по большей части оформительский блок, аналог
        // div в web, может принимать границы, размеры,
        // отступы и т.д.
        child: Center(
          // child - продолжает Container().
          child: Text('Здесь что-то будет'),
        ),
      ),
    );
  }
}
