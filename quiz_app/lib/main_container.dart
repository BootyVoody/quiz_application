import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контейнер теория'),
      ),
      body: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage( // картинка
            image: Image.network(
              'https://cdn.pixabay.com/photo/2021/01/27/18/45/blueberries-5955833_1280.jpg'
            ).image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Контейнер теория'),
//       ),
//       body: Container(
//         width: double.infinity, // бесконечная ширина (но будет ограничиваться)
//                                 // родителем
//         height: 200,
//         // alignment: Alignment.center,
//         padding: const EdgeInsets.all(50),
//         margin: const EdgeInsets.symmetric(
//           horizontal: 20,
//         ),
//         color: Colors.amber[300],
//         child: Text(
//           'codeandart', 
//           textAlign: TextAlign.center // textAlign - выравнивание текста по
//                                        // строке
//         ),
//       ),
//     );
//   }

 // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Container теория'),
  //     ),
  //     body: Center(
  //       child: Container(
  //         decoration: BoxDecoration(
  //           // shape: BoxShape.circle,
  //           border: Border.all(),
  //           color: Colors.amber[600], // если есть decoration, то color всегда
  //                                     // должен быть внутри decoration
  //         ),
  //         alignment: Alignment.center, // Alignment.center растянет контейнер
  //                                      // до размера родителя.
  //         // width: 300,
  //         // height: 300,
  //         margin: const EdgeInsets.only(top: 100),
  //         padding: const EdgeInsets.all(0),
  //         child: Text('codeandart'),
  //       ),
  //     ),
  //   );
  // }