import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Верстка теория'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.redAccent[400],
              width: 50,
              child: Text(
                'Dart!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
            ),

            Icon(
              Icons.favorite,
              size: 50,
              color: Colors.red ,
            ),

            Expanded(
              child: Image.network(
                'https://cdn.pixabay.com/photo/2020/05/07/14/57/reflection-5141841_1280.jpg'
              ),
            ),
            // BiggerColorBox(),
            // Flexible(
            //   child: ColorBox(),
            //   fit: FlexFit.loose,
            //   flex: 1,
            // ),

            // SizedBox(
            //   width: 40,
            // ),

            // SizedBox(
            //   width: 100,
            //   height: 100,
            //   child: ColorBox(),
            // ),

            // Spacer(
            //   flex: 2,
            // ),

            // Flexible(
            //   child: ColorBox(),
            //   fit: FlexFit.loose,
            //   flex: 1,
            // ),
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
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
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
          color: Colors.green[500],
          border: Border.all(),
        ),
      );
    }
}