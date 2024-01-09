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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 30,
        itemBuilder: (content, index){
          return SizedBox(
              height: 100,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        if (index % 2 == 0) {
                          showDialog(context: context, builder: (context){
                            return AlertDialog(
                              title: const Text("OK"),
                              content: const Text('Ok'),
                              actions: [
                                OutlinedButton(
                                    onPressed: (){
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('OK')
                                )
                              ],
                            );
                          }, barrierDismissible: false);
                        }
                        else{
                          showModalBottomSheet(
                              isDismissible: false,
                              context: context,
                              builder: (context){
                                return SizedBox(
                                  height: 300,
                                  child: Center(
                                    child: OutlinedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("OK"),
                                    ),
                                  ),
                                );
                              }
                          );
                        }

                      },
                      child: Text(index.toString())
                  ),
                ],
              )
          );

        },
        separatorBuilder: (BuildContext context,int index){
          return Container(
            height: 1,
            width: double.infinity,
            color: Colors.black,
          );
        },
      ),
    );
  }
}