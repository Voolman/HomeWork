import 'dart:ui';

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

String calculate(String fromApp) {
  var finalzn;
   List variablesList = fromApp.split(" ");
   int zn1 = int.parse(variablesList[0]);
   String symbol = variablesList[1];
   int zn2 = int.parse(variablesList[2]);

   if (symbol == "+") {
     finalzn = zn1 + zn2;
   }
   else if (symbol == "-") {
     finalzn = zn1 - zn2;
   }
   else if (symbol == "*") {
     finalzn = zn1 * zn2;
   }
   else{
     finalzn = zn1 / zn2;
   }
   String fin = finalzn.toString();
  return fin;
}
class _MyHomePageState extends State<MyHomePage> {
  var from_app = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(from_app, style: const TextStyle(fontSize: 100))
                ]
              )
            ),
        Expanded(
          flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += "7";});}, child: const Text("7", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += "8";});}, child: const Text("8", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += "9";});}, child: const Text("9", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += " / ";});}, child: const Text("/", style: TextStyle(fontSize: 50)))))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += "4";});}, child: const Text("4", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += "5";});}, child: const Text("5", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += "6";});}, child: const Text("6", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += " * ";});}, child: const Text("*", style: TextStyle(fontSize: 50)))))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += "1";});}, child: const Text("1", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += "2";});}, child: const Text("2", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += "3";});}, child: const Text("3", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += " - ";});}, child: const Text("-", style: TextStyle(fontSize: 50)))))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app = "";});}, child: const Text("C", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += "0";});}, child: const Text("0", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState((){from_app = calculate(from_app) as String;});}, child: const Text("=", style: TextStyle(fontSize: 50))))),
                      Expanded(child: SizedBox(height: double.infinity, child: OutlinedButton(onPressed: (){setState(() {from_app += " + ";});}, child: const Text("+", style: TextStyle(fontSize: 50)))))
                    ],
                  ),
                ),
              ],
            )
          )
        ]
      )
    );
  }
}
