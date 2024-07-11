import 'package:di_exp/screen_c.dart';
import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  // Attribute
  final int x;

  const ScreenB({super.key, required this.x});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenB'),
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text('ScreenB', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenC(x: x),
                  ),
                );
              },
              child: const Text('Gehe zu Screen C'),
            ),
            Text("$x"),
          ],
        ),
      ),
    );
  }
}
