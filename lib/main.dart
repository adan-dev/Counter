import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomePage(),
    ),
  );
}

// Faz o dart conversar com o flutter
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter",
        ),
      ),
      body: Center(
        child: Text(
          "CONTADOR\n$count",
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          increment();
        },
      ),
    );
  }
}
