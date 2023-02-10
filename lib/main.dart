import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('pressed!');
          },
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
