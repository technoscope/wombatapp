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
  final List<String> iconsLink = [
    'assets/animals_icons/badger.png',
    'assets/animals_icons/bear.png',
    'assets/animals_icons/bee.png',
    'assets/animals_icons/fennec.png',
    'assets/animals_icons/frog.png',
    'assets/animals_icons/hyena.png',
    'assets/animals_icons/panda.png',
    'assets/animals_icons/penguin.png',
    'assets/animals_icons/tarsier.png'
  ];
  ScrollController _scrollController = new ScrollController();

  void _incrementCounter() {
    setState(() {});
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
                      0,
                      MediaQuery.of(context).padding.top + 30,
                      0,
                      0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                              left: -MediaQuery.of(context).size.width * 0.39,
                              child: Image.asset(
                                'assets/button_images/back_arrow_white.png',
                                height:
                                    MediaQuery.of(context).size.width * 0.08,
                                width: MediaQuery.of(context).size.width * 0.08,
                              )),
                          Text('Add',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.07,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mont',
                                color: Colors.white,
                              )),
                        ],
                        overflow: Overflow.visible,
                      ),
                      Stack(alignment: AlignmentDirectional.center, children: [
                        Container(
                            padding: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Image.asset(
                              'assets/background_images/white_circle.png',
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.width * 0.4,
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width ,
                          height: MediaQuery.of(context).size.width * 0.4,
                          child: new ListView(
                            scrollDirection: Axis.horizontal,
                            controller: _scrollController,
                            padding: new EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.3, 0, 0, 0),
                            shrinkWrap: true,
                            children: [
                              Image.asset(
                                  iconsLink[0],
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Image.asset(
                                iconsLink[1],
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Image.asset(
                                iconsLink[2],
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Image.asset(
                                iconsLink[3],
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Image.asset(
                                iconsLink[4],
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Image.asset(
                                iconsLink[5],
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Image.asset(
                                iconsLink[6],
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Image.asset(
                                iconsLink[7],
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Image.asset(
                                iconsLink[8],
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Image.asset(
                                "for space",
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: MediaQuery.of(context).size.width * 0.4,
                              )
                            ],
                          ),
                        )
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
