import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height:300,
          width:300,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
          Text('A',style: TextStyle(fontSize: 25),),
          Text('B',style: TextStyle(fontSize: 25),),
          Text('C',style: TextStyle(fontSize: 25),),
          Text('D',style: TextStyle(fontSize: 25),),
          ElevatedButton(onPressed: () {

          }, child: Text('Click'))
        ])));
  }
}