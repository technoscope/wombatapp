import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 2;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Image.asset(
                  'assets/background_images/background_app_bar_new_user.png',
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: new EdgeInsets.fromLTRB(
                      MediaQuery.of(context).padding.top - 5,
                      MediaQuery.of(context).padding.top + 20,
                      0,
                      0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            left:-MediaQuery.of(context).size.width*0.39,
                              child: Image.asset(
                            'assets/button_images/back_arrow_white.png',
                            height: 25,
                            width: 25,
                          )),
                          Text('Add',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mont',
                                color: Colors.white,
                              )),
                        ],
                        overflow: Overflow.visible,
                      ),
                      Stack(children: [
                        Container(
                            padding: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Image.asset(
                              'assets/background_images/white_circle.png',
                            ))
                      ])
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
