// This line imports the material.dart library from the flutter package, which contains all of the widgets and tools needed to create Material Design applications in Flutter.
import 'package:flutter/material.dart';

// importing question.dart
import './questions.dart';

//it runs the runApp() function, passing in an instance of MyApp as an argument.
// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

/*StatelessWidget is a Flutter class that defines a widget that doesn't depend on any mutable state.  
build() method, it returns a MaterialApp widget, which is a widget that sets up the basic structure and design of a Material Design app.
 we use the @override annotation to indicate that we are overriding the build() method from the StatelessWidget class.*/
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color',
      'What is your favourite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
                onPressed: _answerQuestions, child: Text('Answer')),
            ElevatedButton(
                onPressed: _answerQuestions, child: Text('Answer')),
          ],
        ),
      ),
    );
  }
}
