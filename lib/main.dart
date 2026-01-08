import "package:flutter/material.dart";
import 'rectagle_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/': (context) => const MyHomePage(),
        '/rectangle_page': (context) => const RectanglePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.pushNamed(context, '/rectangle_page'),
          style: TextButton.styleFrom(backgroundColor: Colors.red),
          child: const Text("Go to Rectangle Page",
              style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}


