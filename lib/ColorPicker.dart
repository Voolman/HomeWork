import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

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
  Color pickerColor = Colors.white;
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: const Text("Pick Color"),
                  content: ColorPicker(
                    pickerColor: pickerColor,
                    onColorChanged: (Color value) {
                      pickerColor = value;
                    },
                  ),
                  actions: [
                    OutlinedButton(
                        onPressed: (){
                          setState(() {
                            backgroundColor = pickerColor;
                            Navigator.of(context).pop();
                          });
                        },
                        child: const Text('OK')
                    ),
                    OutlinedButton(
                        onPressed: (){
                          setState(() {
                            Navigator.of(context).pop();
                          });
                        },
                        child: const Text('Отмена')
                    )
                  ],
                );
              }, barrierDismissible: false);
            },
            child: const Text("Pick Color!")
        ),
      ),
    );
  }
}
