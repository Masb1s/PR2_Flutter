import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool textMode = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textMode ? const Text('Hello') : const Icon(Icons.star),
              ElevatedButton(
                onPressed: () => setState(() => textMode = !textMode),
                child: const Text('Change'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}