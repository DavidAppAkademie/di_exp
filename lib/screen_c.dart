import 'package:di_exp/screen_d.dart';
import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  final int x;
  const ScreenC({super.key, required this.x});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenC'),
      ),
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text('ScreenC', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenD(x: x),
                  ),
                );
              },
              child: const Text('Gehe zu Screen D'),
            ),
            Text("$x"),
          ],
        ),
      ),
    );
  }
}
