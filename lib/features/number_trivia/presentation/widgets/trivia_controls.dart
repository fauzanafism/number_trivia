import 'package:flutter/material.dart';

class TriviaControls extends StatefulWidget {
  const TriviaControls({ Key? key }) : super(key: key);

  @override
  State<TriviaControls> createState() => _TriviaControlsState();
}

class _TriviaControlsState extends State<TriviaControls> {
  final controller = TextEditingController();
  String inputStr = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Input a number',
          ),
          onChanged: (value) {
            inputStr = value;
          },
          onSubmitted: (_) {

          },
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Expanded(child: ElevatedButton(child: const Text('Search'), onPressed: dispatchConcrete,)),
            const SizedBox(width: 10,),
            Expanded(child: ElevatedButton(child: const Text('Get random trivia'), onPressed: dispatchRandom,))
          ],
        )
      ],
    );
  }

  void dispatchConcrete() {
    controller.clear();
  }

  void dispatchRandom() {
    controller.clear();
  }
}