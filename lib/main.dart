import 'package:di_exp/screen_a.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    int x = 21;
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
        home: Builder(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Haupt Screen'),
            ),
            body: Center(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text('Haupt Screen',
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 20),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenA(x: x),
                        ),
                      );
                    },
                    child: const Text('Gehe zu Screen A'),
                  ),
                  Text("$x"),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
