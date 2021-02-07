import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState(); // Переопределяем метод
                                                    // createState() 
}

class _HomePageState extends State<HomePage> {
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
