import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Button',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Hello Button'),
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

  void _incrementCounter(int amount) {
    setState(() {
      //Built in function on a state objects
      _counter += amount;
    });
  }

  void _setCounter(int amount) {
    setState(() {
      _counter = amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max, //default
              mainAxisAlignment: MainAxisAlignment
                  .center, //start, spaceBetween, spaceAround, spaceEvenly, center, end
              children: [
                TextButton(
                  onPressed: () {
                    _incrementCounter(-1);
                  },
                  child: const Text("Decrement"),
                ),
                Container(
                  height: 200.0,
                  width: 100.0,
                  child: ElevatedButton(
                    onPressed: () {
                      _setCounter(0);
                    },
                    child: Text("Reset"),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _incrementCounter(1);
                  },
                  child: const Text("Increment"),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max, //default
              mainAxisAlignment: MainAxisAlignment
                  .center, //start, spaceBetween, spaceAround, spaceEvenly, center, end
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: ElevatedButton(
                    onPressed: () {
                      _incrementCounter(-1);
                    },
                    child: const Text("Decrement"),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: 200.0,
                    width: 100.0,
                    child: ElevatedButton(
                      onPressed: () {
                        _setCounter(0);
                      },
                      child: Text("Reset"),
                    ),
                  ),
                ),
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {
                      _incrementCounter(1);
                    },
                    child: const Text("Increment"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
