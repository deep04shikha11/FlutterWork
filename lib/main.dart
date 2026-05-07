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
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(height: 100, color: Colors.blue.shade300),
          ),
          Expanded(
            flex: 2,
            child: Container(height: 100, color: Colors.yellow.shade300),
          ),
          Expanded(
            flex: 2,
            child: Container(height: 100, color: Colors.red.shade300),
          ),
          Expanded(
            flex: 2,
            child: Container(height: 100, color: Colors.green.shade300),
          ),
        ],
      ),
    );
  }
}
