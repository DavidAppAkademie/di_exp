import 'package:di_exp/screen_b.dart';
import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  // Attribute
  final int x;
  // Konstruktor
  const ScreenA({super.key, required this.x});

  // Methoden
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenA'),
      ),
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text('ScreenA', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenB(x: x),
                  ),
                );
              },
              child: const Text('Gehe zu Screen B'),
            ),
            Text("$x"),
          ],
        ),
      ),
    );
  }
}
