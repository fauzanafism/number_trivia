import 'package:flutter/material.dart';

class TriviaDisplay extends StatelessWidget {
  const TriviaDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3,
        child: Column(
          children: const <Widget>[
            Text(
              '1',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: Center(
              child: SingleChildScrollView(
                child: Text(
                  '1 adalah angka pertama',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ))
          ],
        ));
  }
}
