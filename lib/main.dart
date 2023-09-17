import 'package:flutter/material.dart';
import 'package:tp_note/footer.dart';
import 'package:tp_note/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter TP noté',
      theme: ThemeData(
          useMaterial3: true,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontSize: 24,
            ),
            bodyLarge: TextStyle(
              fontSize: 30,
            ),
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      /*child: Placeholder(
        color: Colors.pink,
      ), */
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              flex: 2,
              child: Header(choices: []),
            ),
            Expanded(
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
