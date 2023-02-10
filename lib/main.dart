import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //runs once when the widget is rendered
  @override
  void initState() {
    super.initState();
  }

  //runs when the widget is removed from the UI
  void dispose() {
    super.dispose();
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    List colors = [Colors.red, Colors.blue, Colors.green];
    Random random = Random();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is Fun!'),
        ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            return Container(
              color: colors[random.nextInt(3)],
              width: 500,
              height: 500,
              child: Center(
                  child: Text(
                '$count',
                style: const TextStyle(fontSize: 60),
              )),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
        drawer: Drawer(
          child: Text('Yo!'),
        ),
      ),
    );
  }
}
