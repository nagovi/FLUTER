import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget{
  const Counter({super.key});
  @override
  State<StatefulWidget> createState() {
    return CounterState();
  }
}

class CounterState extends State<Counter>{
  int _counter = 0;
  @override 
  Widget build(BuildContext context)  {
      return ElevatedButton(
        onPressed: () {
          setState(() {
            onPressed();
          });
        },
        style: ButtonStyle( 
          backgroundColor:MaterialStatePropertyAll(Color.fromARGB(255, 191, 162, 202)), 
          foregroundColor:MaterialStatePropertyAll(Color.fromARGB(255, 56, 126, 255),)),
        child: Text("Counter: $_counter", style: TextStyle( fontSize:100, fontFamily: 'RobotoMono')));
    }
    void onPressed(){   
      _counter++;
    }
  }