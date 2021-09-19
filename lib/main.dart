import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.pink,
                title: const Text('Cua nang Flutter'),
              ),
              body: buildColumn()))));
  // body: ColumnWidget()))));
}

// method
Column buildColumn() {
  return Column(
    children: [
      const Center(
        child: Text('Hi Bạn, cho mình làm quen nhes'),
      ),
      Row(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text('yellow'),
            style: TextButton.styleFrom(backgroundColor: Colors.yellow),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('red'),
            style: TextButton.styleFrom(backgroundColor: Colors.red),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('green'),
            style: TextButton.styleFrom(backgroundColor: Colors.green),
          )
        ],
      )
    ],
  );
}

// class widget
class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text('Hi Bạn, cho mình làm quen nhes'),
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('yellow'),
              style: TextButton.styleFrom(backgroundColor: Colors.yellow),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('red'),
              style: TextButton.styleFrom(backgroundColor: Colors.red),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('green'),
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            )
          ],
        )
      ],
    );
  }
}
