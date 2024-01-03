import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double num1 = 0;
  double num2 = 0;
  double num3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, num1.toInt(), num2.toInt(), num3.toInt()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Slider(
                activeColor: Colors.red,
                thumbColor: Colors.red,
                min: 0,
                max: 255,
                value: num1,
                onChanged: (value){
                  setState(() {
                    num1 = value;
                  });
                }
            ),

            Slider(
                activeColor: Colors.green,
                thumbColor: Colors.green,
                min: 0,
                max: 255,
                value: num2,
                onChanged: (value){
                  setState(() {
                    num2 = value;
                  });
                }
            ),
            Slider(
                activeColor: Colors.blue,
                thumbColor: Colors.blue,
                min: 0,
                max: 255,
                value: num3,
                onChanged: (value){
                  setState(() {
                    num3 = value;
                  });
                }
            ),
        ],
      ),
    );
  }
}
