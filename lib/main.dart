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
      title: 'first work demo',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: .fromSeed(seedColor: Colors.greenAccent),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Flutter container"),
      ),
      body: Container(
        height: 400,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('First', style: TextStyle(fontSize: 24)),
            Text('Second', style: TextStyle(fontSize: 24)),
            Text('Third', style: TextStyle(fontSize: 24)),
            Text('Fourth', style: TextStyle(fontSize: 24)),
            Text('Fifth', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                print("Button clicked");
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
      // Center(
      //   child: Container(
      //     width: 300,
      //     height: 300,
      //     child: Image.asset("assets/images/lrn.jpg"),
      //   ),
      // ),
      // Image.asset("assets/images/lrn.jpg"),
      // Container(
      //   width: 200,
      //   height: 200,
      //   decoration: BoxDecoration(
      //     color: Colors.blue,
      //     border: Border.all(color: Colors.black, width: 5),
      //     borderRadius: BorderRadius.circular(15),
      //   ),
      //   child: const Center(
      //     child: Text(
      //       'Using Text Widget!',
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontSize: 24,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      // ),
      // TextButton(
      //   onPressed: () {
      //     print("Button clicked");
      //   },
      //   child: const Text('Click TextButton'),
      // ),
      // ElevatedButton(
      //   onPressed: () {
      //     print("Elevated Button clicked");
      //   },
      //   child: const Text('Click ElevatedButton'),
      // ),
      // OutlinedButton(
      //   onPressed: () {
      //     print("Outlined Button clicked");
      //   },
      //   child: const Text('Click OutlinedButton'),
      // ),
    );
  }
}
