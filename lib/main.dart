import 'package:flutter/material.dart';
import 'package:monlmo/src/constants/theme/theme.dart';
import 'package:monlmo/src/screens/AllProperty.dart';
import 'package:monlmo/src/screens/homepage.dart';
import 'package:monlmo/src/screens/insurrance.dart';
import 'package:monlmo/src/screens/intro.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const AllProperty(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello World',
        ),
        leading: const Icon(Icons.home),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: null, child: const Icon(Icons.add)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Heading Small',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'Heading Medium',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Heading Large',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            ElevatedButton(onPressed: null, child: Text('Elevated Button')),
            OutlinedButton(onPressed: null, child: Text('Outlined Button'))
          ],
        ),
      ),
    );
  }
}
