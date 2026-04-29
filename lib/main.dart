import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Container(
        color: Colors.blue.shade100,
        child: const Center(
          child: Text(
            'Welcome to the Dashboard',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 177, 75, 75),
            ),
          ),
        ),
      ),
    );
  }
}
