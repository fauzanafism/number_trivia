import 'package:flutter/material.dart';

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
          child: Column(children: <Widget>[
            const SizedBox(height: 10,),
            const Text('Start searching!'),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: const Text('Search'))
          ],),
        ),
      ),
    );
  }
}
