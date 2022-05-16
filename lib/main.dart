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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 50.0,
                width: 100.0,
                color: Colors.white,
                child: const Text('Container 1'),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50.0,
                width: 100.0,
                color: Colors.blue,
                child: const Text('Container 2'),
              ),
              Container(
                height: 50.0,
                width: 100.0,
                color: Colors.red,
                child: const Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
