import 'package:flutter/material.dart';

class ScreenD extends StatelessWidget {
  final int x;
  const ScreenD({super.key, required this.x});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenD'),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text('ScreenD', style: Theme.of(context).textTheme.headlineMedium),
            Text("$x"),
          ],
        ),
      ),
    );
  }
}
