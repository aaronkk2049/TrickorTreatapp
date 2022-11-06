import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() {
  runApp(const trickortreatApp());
}

class trickortreatApp extends StatelessWidget {
  const trickortreatApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme= ThemeData();
    return MaterialApp(
      title: 'Trick or Treat Game',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.orange[700],
          secondary: Colors.black54,
        ),
      ),
      home: const MyHomePage(title: 'Trick or Treat Game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late Timer _timer;
  int _start = 30;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Random rng= Random();
    List<bool> isVisible= [rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool(),rng.nextBool()];
    List<String> images=['candycorn.jpg','ghost.jpg','jacklolantern.jpg','skull.jpg',];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.orange[700],
      ),
      body: Column(
        children: <Widget>[
          Text("count: "+_counter.toString(), style: TextStyle(
              fontFamily: 'Silkscreen',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Visibility(
            visible: (_counter>=10),
            child: Text('Happy Halloween', style: TextStyle(
                fontSize:50,
                fontFamily: 'Silkscreen',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:Table(
              children: [
                TableRow(
                  children: [
                    Visibility(
                      visible: isVisible[0],
                      child: IconButton(
                        splashRadius: 50,
                        iconSize: 100,
                        icon: Ink.image(
                          image: AssetImage(images[rng.nextInt(4)]),
                        ),
                        onPressed: () {
                          // do something when the button is pressed
                          _incrementCounter();
                          debugPrint('counter: '+ _counter.toString());
                          if(_counter==1){
                            startTimer();
                          }
                        },
                      ),
                    ),
                    Visibility(
                      visible: isVisible[1],
                      child: IconButton(
                        splashRadius: 50,
                        iconSize: 100,
                        icon: Ink.image(
                          image: AssetImage(images[rng.nextInt(4)]),
                        ),
                        onPressed: () {
                          // do something when the button is pressed
                          _incrementCounter();
                          debugPrint('counter: '+ _counter.toString());
                          if(_counter==1){
                            startTimer();
                          }
                        },
                      ),
                    ),
                    Visibility(
                      visible: isVisible[2],
                      child: IconButton(
                        splashRadius: 50,
                        iconSize: 100,
                        icon: Ink.image(
                          image: AssetImage(images[rng.nextInt(4)]),
                        ),
                        onPressed: () {
                          // do something when the button is pressed
                          _incrementCounter();
                          debugPrint('counter: '+ _counter.toString());
                          if(_counter==1){
                            startTimer();
                          }
                        },
                      ),
                    ),
                    Visibility(
                      visible: isVisible[3],
                      child: IconButton(
                        splashRadius: 50,
                        iconSize: 100,
                        icon: Ink.image(
                          image: AssetImage(images[rng.nextInt(4)]),
                        ),
                        onPressed: () {
                          // do something when the button is pressed
                          _incrementCounter();
                          debugPrint('counter: '+ _counter.toString());
                          if(_counter==1){
                            startTimer();
                          }
                        },
                      ),
                    ),
                  ]
                ),
                TableRow(
                    children: [
                      Visibility(
                        visible: isVisible[4],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                      Visibility(
                        visible: isVisible[5],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                      Visibility(
                        visible: isVisible[6],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                      Visibility(
                        visible: isVisible[7],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Visibility(
                        visible: isVisible[8],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                      Visibility(
                        visible: isVisible[9],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                      Visibility(
                        visible: isVisible[10],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                      Visibility(
                        visible: isVisible[11],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Visibility(
                        visible: isVisible[12],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                      Visibility(
                        visible: isVisible[13],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                      Visibility(
                        visible: isVisible[14],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                      Visibility(
                        visible: isVisible[15],
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 100,
                          icon: Ink.image(
                            image: AssetImage(images[rng.nextInt(4)]),
                          ),
                          onPressed: () {
                            // do something when the button is pressed
                            _incrementCounter();
                            debugPrint('counter: '+ _counter.toString());
                            if(_counter==1){
                              startTimer();
                            }
                          },
                        ),
                      ),
                    ]
                ),
              ],
            ),
          ),
          Text('$_start',
            style: TextStyle(
              fontFamily: 'Silkscreen',
              fontSize: 35,
            ),
          ),
        ],
      ),
    );
  }
}
