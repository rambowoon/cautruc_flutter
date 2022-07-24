import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bài tập cấu trúc")
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Flexible(
              flex: 1,
                child: Container(
                  constraints: BoxConstraints.expand(),
                  color: Colors.red,
                  child: Center(
                    child: Text("1", style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                        fontWeight: FontWeight.bold
                    )),
                  )
                )
            ),
            Flexible(
                flex: 3,
                child: Container(
                    constraints: BoxConstraints.expand(),
                    color: Colors.black,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                              constraints: BoxConstraints.expand(),
                              color: Colors.yellow,

                              child: Center(
                                child: Text("2", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                )),
                              )
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(
                              constraints: BoxConstraints.expand(),
                              color: Colors.green,
                              child: Column(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Container(
                                        constraints: BoxConstraints.expand(),
                                        color: Colors.blue,
                                        child: Center(
                                          child: Text("3", style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold
                                          )),
                                        )
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                        constraints: BoxConstraints.expand(),
                                        color: Colors.blue,
                                        child: Row(
                                          children: [
                                            Flexible(
                                              flex: 1,
                                              child: Container(
                                                constraints: BoxConstraints.expand(),
                                                  color: Colors.purpleAccent,
                                                  child: Center(
                                                    child: Text("4", style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 30,
                                                        fontWeight: FontWeight.bold
                                                    )),
                                                  )
                                              ),
                                            ),
                                            Flexible(
                                              flex: 1,
                                              child: Container(
                                                  constraints: BoxConstraints.expand(),
                                                  color: Colors.purple,
                                                  child: Center(
                                                    child: Text("5", style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 30,
                                                        fontWeight: FontWeight.bold
                                                    )),
                                                  )
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  )
                                ],
                              )
                          ),
                        )
                      ],
                    )
                )
            )
          ],
        ),
      ),
    );
  }
}
