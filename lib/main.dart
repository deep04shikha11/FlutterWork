import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Container(
        height: 100,
        color: Colors.blue.shade300,
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            color: Colors.yellow.shade300,
            child: const Center(
              child: Text('Margin and Padding Using EdgeInsets'),
            ),
          ),
        ),
      ),
      // Column(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(height: 100, color: Colors.blue.shade300),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(height: 100, color: Colors.yellow.shade300),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(height: 100, color: Colors.red.shade300),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(height: 100, color: Colors.green.shade300),
      //     ),
      //   ],
      // ),
    );
  }
}
