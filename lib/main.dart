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
              fit: StackFit.loose,
              children: [
                Image.asset(
                  'assets/background_images/background_app_bar_new_user.png',
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: new EdgeInsets.fromLTRB(30,35,0,10),
                            child: Image.asset(
                          'assets/button_images/back_arrow_white.png',
                          height: 25,
                          width: 25,
                        )),
                        Container(
                            padding: new EdgeInsets.fromLTRB(110,35,0,10),
                            child: Text('Add',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )))
                      ],
                    ),
                    Stack(
                      fit: StackFit.loose,
                      children: [
                        Positioned(
                            child: Image.asset(
                          'assets/background_images/white_circle.png',
                          width: 150,
                          height: 150,
                        ))
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
