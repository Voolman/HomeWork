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
  String textfromfield = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent
                ),
                alignment: Alignment.centerLeft,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: "Мурзик",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left:22)
                  ),
                  onChanged: (text){
                    setState(() {
                      textfromfield = text;
                    });
                    },
                ),
              ),
            ),
          ),
          Center(
            child: 
            Image.network("https://developer.alexanderklimov.ru/android/images/pinkhellokitty.jpg"),
          ),
          Center(
            child: RichText(text: TextSpan(
              children: [
                const TextSpan(text: "Привет, ", style: TextStyle(color: Colors.black, fontSize: 40)),
                TextSpan(text: textfromfield, style: const TextStyle(color: Colors.white, fontSize: 40))
              ]
            ),
              
            ),
          )
        ],
        )
      );
  }
}
