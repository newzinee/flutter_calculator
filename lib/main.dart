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
  String _showText = '';
  num _result;

  void _inputText(String input) {
    setState(() {
      _showText += input;
    });
  }

  void _inputNumber(num _input) {
    if (_showText == '') {
      _result = _input;
    } else if (_showText.endsWith('+')) {
      _result = _result + _input;
    } else if (_showText.endsWith('-')) {
      _result = _result - _input;
    } else if (_showText.endsWith('%')) {
      _result = _result % _input;
    } else if (_showText.endsWith('/')) {
      _result = _result / _input;
    } else if (_showText.endsWith('x')) {
      _result = _result * _input;
    }
    _inputText(_input.toString());
  }

  void _inputRoles(String symbol) {
    if (_showText == '') {
    } else if (_showText.endsWith('+')) {
    } else if (_showText.endsWith('-')) {
    } else if (_showText.endsWith('%')) {
    } else if (_showText.endsWith('/')) {
    } else if (_showText.endsWith('x')) {
    } else {
      _inputText(symbol);
    }
  }

  void _removeLast() {
    if (_showText.isEmpty) return null;
    setState(() {
      _showText = _showText.substring(0, _showText.length - 1);
    });
  }

  void _clear() {
    setState(() {
      _result = null;
      _showText = '';
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
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 20 / 100,
          alignment: Alignment.centerRight,
          child: Text(
            '$_showText',
            style: TextStyle(fontSize: 40),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.centerRight,
          child: Text(
            '$_result',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ),
        Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerRight,
            child: OutlineButton(
              child: Icon(Icons.arrow_back),
              onPressed: _removeLast,
            )),
        Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 60 / 100,
          child: GridView.count(
            padding: const EdgeInsets.all(10),
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              RaisedButton(onPressed: _clear, child: Text('C')),
              RaisedButton(onPressed: () {}, child: Text('()')),
              RaisedButton(onPressed: () => _inputRoles('%'), child: Text('%')),
              RaisedButton(onPressed: () => _inputRoles('/'), child: Text('/')),
              RaisedButton(onPressed: () => _inputNumber(7), child: Text('7')),
              RaisedButton(onPressed: () => _inputNumber(8), child: Text('8')),
              RaisedButton(onPressed: () => _inputNumber(9), child: Text('9')),
              RaisedButton(onPressed: () => _inputRoles('x'), child: Text('x')),
              RaisedButton(onPressed: () => _inputNumber(4), child: Text('4')),
              RaisedButton(onPressed: () => _inputNumber(5), child: Text('5')),
              RaisedButton(onPressed: () => _inputNumber(6), child: Text('6')),
              RaisedButton(onPressed: () => _inputRoles('-'), child: Text('-')),
              RaisedButton(onPressed: () => _inputNumber(1), child: Text('1')),
              RaisedButton(onPressed: () => _inputNumber(2), child: Text('2')),
              RaisedButton(onPressed: () => _inputNumber(3), child: Text('3')),
              RaisedButton(onPressed: () => _inputRoles('+'), child: Text('+')),
              RaisedButton(onPressed: () {}, child: Text('+/-')),
              RaisedButton(onPressed: () => _inputNumber(0), child: Text('0')),
              RaisedButton(onPressed: () {}, child: Text('.')),
              RaisedButton(onPressed: () {}, child: Text('=')),
            ],
          ),
        )
      ],
    ));
  }
}
