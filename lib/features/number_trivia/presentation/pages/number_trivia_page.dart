import 'package:flutter/material.dart';
import 'package:number_trivia/features/number_trivia/presentation/widgets/widgets.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: const <Widget>[
            SizedBox(height: 10,),
            MessageDisplay(message: 'Start searching!',),
            SizedBox(height: 20,),
            TriviaControls(),
          ],),
        ),
      ),
    );
  }
}

