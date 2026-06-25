import 'package:flutter/material.dart';
import 'package:hot_load_app/ui_helper/utility.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(fontSize: 16),
          bodyMedium: TextStyle(fontSize: 14),
        ),
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // var arrNames = [
    //   'John',
    //   'Jane',
    //   'Doe',
    //   'Smith',
    //   'Alice',
    //   'Bob',
    //   'Charlie',
    //   'David',
    //   'Eve',
    //   'Frank',
    // ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        title: const Text('Dashboard'),
      ),
      body: Column(
        children: [
          Text(
            'Hello one',
            style: Theme.of(
              context,
            ).textTheme.displayLarge!.copyWith(color: Colors.blue),
          ),
          Text(
            'Hello two',
            style: myTextStyle(color: Colors.lightBlue.shade300),
          ),
          Text(
            'Hello three',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(color: Colors.red),
          ),
          Text(
            'Hello four',
            style: myTextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
      //    ListView.separated(
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         // leading: CircleAvatar(child: Text('${index + 1}')),
      //         leading: CircleAvatar(
      //           backgroundImage: AssetImage('assets/images/profile.png'),
      //           backgroundColor: Colors.lightGreen.shade300,
      //           maxRadius: 30,
      //           child: Text(
      //             arrNames[index][0],
      //             style: const TextStyle(
      //               color: Colors.white,
      //               fontFamily: 'Nunito',
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ),
      //         title: Text(arrNames[index]),
      //         subtitle: Text('Designation ${index.toString()}'),
      //         trailing: const Icon(Icons.arrow_forward_ios),
      //       );
      //     },
      //     separatorBuilder: (context, index) =>
      //         const Divider(height: 10, thickness: 2, color: Colors.grey),
      //     itemCount: 20,
      //   ),
      //   // Column(
      //   //   children: [
      //   //     Expanded(
      //   //       flex: 2,
      //   //       child: Container(height: 100, color: Colors.blue.shade300),
      //   //     ),
      //   //     Expanded(
      //   //       flex: 2,
      //   //       child: Container(height: 100, color: Colors.yellow.shade300),
      //   //     ),
      //   //     Expanded(
      //   //       flex: 2,
      //   //       child: Container(height: 100, color: Colors.red.shade300),
      //   //     ),
      //   //     Expanded(
      //   //       flex: 2,
      //   //       child: Container(height: 100, color: Colors.green.shade300),
      //   //     ),
      //   //   ],
      //   // ),
    );
  }
}
