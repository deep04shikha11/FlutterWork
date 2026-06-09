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
    var arrNames = [
      'John',
      'Jane',
      'Doe',
      'Smith',
      'Alice',
      'Bob',
      'Charlie',
      'David',
      'Eve',
      'Frank',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            // leading: CircleAvatar(child: Text('${index + 1}')),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
              backgroundColor: Colors.lightGreen.shade300,
              maxRadius: 30,
              child: Text(
                arrNames[index][0],
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(arrNames[index]),
            subtitle: const Text('Designation'),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
        separatorBuilder: (context, index) =>
            const Divider(height: 10, thickness: 2, color: Colors.grey),
        itemCount: 20,
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
