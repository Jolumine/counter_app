import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.yellow,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MyHomePage(title: 'Counter Application'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      if(_counter != 0){
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 40
            ),
          )
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Counter",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 40
              ),
            ),
            Text(
              '$_counter',
              style: const TextStyle(
                color: Colors.yellow,
                fontSize: 40
              ),
            ),
            Row(
              children: <Widget>[
                const Padding(
                    padding: EdgeInsets.fromLTRB(25, 80, 25, 0)
                ),
                ElevatedButton(
                    onPressed: _incrementCounter,
                    style:  ElevatedButton.styleFrom(
                      foregroundColor: Colors.yellow,
                      backgroundColor: Colors.black,
                      side: const BorderSide(
                       width: 1.0,
                       color: Colors.yellow
                      )
                    ),
                    child: Row(
                      children: const <Widget>[
                        Icon(Icons.plus_one),
                        Text("Increment")
                      ],
                    )
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(25, 80, 25, 0)
                ),
                ElevatedButton(
                    onPressed: _decrementCounter,
                    style:  ElevatedButton.styleFrom(
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.black,
                        side: const BorderSide(
                            width: 1.0,
                            color: Colors.yellow
                        )
                    ),
                    child: Row(
                      children: const <Widget>[
                        Icon(Icons.exposure_minus_1),
                        Text("Increment")
                      ],
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
