import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Đếm số',
      home: MyHomePage(title: 'Đếm số'),
      theme: ThemeData(
          primaryColor: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      final snackbar =
          SnackBar(content: Text('Số đêm trước khi increment: $_counter'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: renderText(_counter),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text('Số đếm hiện tại: $counter');
  }
}

Text renderText(int counter) {
  return Text('Số đếm hiện tại: $counter');
}
