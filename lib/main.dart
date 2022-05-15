import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// For Hot reloads we have to have the things that we've changed
// inside stateless or stateful widget.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // In stateless widgets, the app will update the changed code
  // Without need to rebuild the hole app, and link the resources and
  // compile code again.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            height: 50.0,
            width: 100.0,
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.white,
            child: const Text('Hi there'),
          ),
        ),
      ),
    );
  }
}
