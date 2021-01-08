import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter Calculator',
      home: StandardMode(),
    );
  }
}

class StandardMode extends StatefulWidget {
  @override
  _StandardModeState createState() => _StandardModeState();
}

class _StandardModeState extends State<StandardMode> {
  var _result = '';

  void _inputText(var input) {
    setState(() {
      _result += input;
    });
  }

  void _clear() {
    setState(() {
      _result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100,
          child: Text('$_result'),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 500,
          child: GridView.count(
            padding: const EdgeInsets.all(10),
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              RaisedButton(onPressed: _clear, child: Text('C')),
              RaisedButton(onPressed: () {}, child: Text('()')),
              RaisedButton(onPressed: () => _inputText('%'), child: Text('%')),
              RaisedButton(onPressed: () => _inputText('/'), child: Text('/')),
              RaisedButton(onPressed: () => _inputText('7'), child: Text('7')),
              RaisedButton(onPressed: () => _inputText('8'), child: Text('8')),
              RaisedButton(onPressed: () => _inputText('9'), child: Text('9')),
              RaisedButton(onPressed: () => _inputText('x'), child: Text('x')),
              RaisedButton(onPressed: () => _inputText('4'), child: Text('4')),
              RaisedButton(onPressed: () => _inputText('5'), child: Text('5')),
              RaisedButton(onPressed: () => _inputText('6'), child: Text('6')),
              RaisedButton(onPressed: () => _inputText('-'), child: Text('-')),
              RaisedButton(onPressed: () => _inputText('1'), child: Text('1')),
              RaisedButton(onPressed: () => _inputText('2'), child: Text('2')),
              RaisedButton(onPressed: () => _inputText('3'), child: Text('3')),
              RaisedButton(onPressed: () => _inputText('+'), child: Text('+')),
              RaisedButton(onPressed: () {}, child: Text('+/-')),
              RaisedButton(onPressed: () => _inputText('0'), child: Text('0')),
              RaisedButton(onPressed: () {}, child: Text('.')),
              RaisedButton(onPressed: () {}, child: Text('=')),
            ],
          ),
        )
      ],
    ));
  }
}
