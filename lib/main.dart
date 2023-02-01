import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer taken!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite colour?',
      'What\'s your favorite pet?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
