import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Greeting App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),

            Image.network(
              'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
              height: 200,
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(content: Text('Button Pressed!'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
