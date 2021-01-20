import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static const MaterialColor white = const MaterialColor(
    0xFFFFFFFF,
    const <int, Color>{
      50: const Color(0xFFFFFFFF),
      100: const Color(0xFFFFFFFF),
      200: const Color(0xFFFFFFFF),
      300: const Color(0xFFFFFFFF),
      400: const Color(0xFFFFFFFF),
      500: const Color(0xFFFFFFFF),
      600: const Color(0xFFFFFFFF),
      700: const Color(0xFFFFFFFF),
      800: const Color(0xFFFFFFFF),
      900: const Color(0xFFFFFFFF),
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Fifty",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink
                    ),
                  ),
                  Text(
                      "50",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.pink[50],
                child: Stack(
                  children: [
                    SingleChildScrollView(  //contains question and button
                      child: Container(
                        margin: EdgeInsets.fromLTRB(16, 100, 16, 16),
                        padding: EdgeInsets.fromLTRB(16, 100, 16, 50),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              child: Text(
                                "What would be the next number?",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink
                                ),
                              ),
                              padding: EdgeInsets.all(8.0),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      height: 80,
                                      child: Card(
                                        elevation: 8,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "EVEN"
                                          ),
                                        ),
                                      ),
                                    ),
                                  flex: 1,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 80,
                                    child: Card(
                                      elevation: 8,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "ODD"
                                        ),
                                      ),
                                    ),
                                  ),
                                  flex: 1,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 80,
                              child: Card(
                                color: Colors.teal,
                                elevation: 8,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      "Retry Again",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        width: 200,
                        height: 100,
                        child: Card(
                          elevation: 8.0,
                          color: Colors.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "????",
                              style: TextStyle(
                                fontSize: 32.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      alignment: Alignment.topCenter,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}