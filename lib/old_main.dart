import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter container"),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) =>
            Divider(color: Colors.black, thickness: 9),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: index % 2 == 0 ? Colors.blue : Colors.green,
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          );
        },
      ),
      // ListView(
      //   scrollDirection: Axis.horizontal,
      //   reverse: true,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         'One',
      //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         'Two',
      //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         'Three',
      //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         'Four',
      //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         'Five',
      //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //   ],
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(bottom: 11),
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: const EdgeInsets.only(right: 11),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.lightBlue,
      //                 ),
      //                 Container(
      //                   margin: const EdgeInsets.only(right: 11),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.purpleAccent,
      //                 ),
      //                 Container(
      //                   margin: const EdgeInsets.only(right: 11),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.pinkAccent,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(bottom: 11),
      //           height: 300,
      //           width: 300,
      //           color: Colors.lightGreen,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 300,
      //           width: 300,
      //           color: Colors.orange,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // Center(
      //   child: InkWell(
      //     onTap: () {
      //       print("Container clicked");
      //     },
      //     onLongPress: () {
      //       print("Container long pressed");
      //     },
      //     onDoubleTap: () {
      //       print("Container double tapped");
      //     },
      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //       child: Center(
      //         child: InkWell(
      //           onTap: () {
      //             print("Text clicked");
      //           },
      //           child: Text(
      //             'click here',
      //             style: TextStyle(fontSize: 24, color: Colors.white),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // Container(
      //   height: 300,
      //   width: 300,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Text('Inside row First', style: TextStyle(fontSize: 24)),
      //           Text('Inside row Second', style: TextStyle(fontSize: 24)),
      //           Text('Inside row Third', style: TextStyle(fontSize: 24)),
      //         ],
      //       ),

      //       Text('First', style: TextStyle(fontSize: 24)),
      //       Text('Second', style: TextStyle(fontSize: 24)),
      //       Text('Third', style: TextStyle(fontSize: 24)),
      //       Text('Fourth', style: TextStyle(fontSize: 24)),
      //       Text('Fifth', style: TextStyle(fontSize: 24)),
      //       ElevatedButton(
      //         onPressed: () {
      //           print("Button clicked");
      //         },
      //         child: Text('Click Me'),
      //       ),
      //     ],
      //   ),
      // ),
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
