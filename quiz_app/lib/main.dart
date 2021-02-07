import 'package:flutter/material.dart'; // Material Design
import 'package:quiz_app/pages/home_page.dart';
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
          primarySwatch: Colors.deepPurple // primarySwatch - глобально задает тему.
          ),
      home: HomePage(), // home root'вый виджет.
    );
  }
}