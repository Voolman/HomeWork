import 'dart:io';
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
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 900,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                        width: double.infinity,
                        height: 366,
                        child: Image.network(
                            "https://avatars.mds.yandex.net/get-images-cbir/1594654/FNXWuKz0DvB5XMKlDQ0bFA23/ocr",
                            fit: BoxFit.fill)
                    ),
                    const Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 18, right: 18, top: 28),
                            child: Center(
                                child: Text(
                                    "Смартфон Huawei Nova 11i",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: "Inter",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700
                                    )
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18,right: 18,top: 25),
                          child: Text(
                            "Смартфон HUAWEI nova 11i оснащен полноэкранным IPS-дисплеем диагональю 6.8 дюймов, что удобно для просмотра фильмов, фотографий, игр или приложений. Тонкий корпус черного цвета изготовлен из прочного пластика, устойчивого к воздействию внешних факторов. Благодаря 8-ядерному процессору и 8 ГБ оперативной памяти, загрузка данных осуществляется с высокой скоростью. Частота экрана 90 Гц обеспечивает плавный переход и смену картинки.Смартфон HUAWEI nova 11i имеет камеру 48+2 Мп, с помощью которой можно делать четкие и детализированные изображения при разном уровне освещенности. Слот для карт рассчитан на две SIM, что удобно для разделения личных или рабочих разговоров. Объема памяти на 128 ГБ достаточно для хранения большого количества информации. Батарея мощностью 40 Вт поддерживает быструю зарядку и рассчитана на длительную работу.",
                            style: TextStyle(
                                color: Color.fromARGB(255, 34, 34, 34),
                                fontFamily: "Inter",
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.00),
                          Color.fromRGBO(255, 255, 255, 0.84),
                          Color.fromRGBO(255, 255, 255, 0.85),
                          Color.fromRGBO(255, 255, 255, 0.85),
                          Colors.white
                        ]
                    )
                ),
                height: 119,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18, top: 48, bottom: 23),
                  child: Expanded(
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.blueAccent),
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)
                            )
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(18),
                                      topRight: Radius.circular(18)
                                  )
                              ),
                              context: context,
                              builder: (context){
                                return SizedBox(
                                  height: 161,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(top: 26, left: 18, right: 18),
                                          child: SizedBox(
                                              height: 48,
                                              width: double.infinity,
                                              child: Expanded(
                                                  child: OutlinedButton(
                                                      style: OutlinedButton.styleFrom(
                                                        side: const BorderSide(
                                                            width: 2.0, color:
                                                        Colors.blueAccent
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(18)
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                      child: const Text(
                                                          "Добавить в корзину",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight: FontWeight.w500,
                                                              color: Colors.blueAccent,
                                                              fontStyle: FontStyle.normal,
                                                              fontFamily: "Inter"
                                                          )
                                                      )
                                                  )
                                              )
                                          )
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(top: 13, left: 18, right: 18),
                                          child: SizedBox(
                                              height: 48,
                                              width: double.infinity,
                                              child: Expanded(
                                                  child: OutlinedButton(
                                                      style: OutlinedButton.styleFrom(
                                                        side: const BorderSide(color: Colors.blueAccent),
                                                        backgroundColor: Colors.blueAccent,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(18)
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                      child: const Text(
                                                          "Купить в один клик",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight: FontWeight.w500,
                                                              color: Colors.white,
                                                              fontStyle: FontStyle.normal,
                                                              fontFamily: "Inter"
                                                          )
                                                      )
                                                  )
                                              )
                                          )
                                      )
                                    ],
                                  ),
                                );
                              }
                          );
                        },
                        child: const Text(
                            "Купить",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Inter"
                            )
                        )
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}