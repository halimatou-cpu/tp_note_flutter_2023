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
            bodySmall: TextStyle(
              fontSize: 18,
            ),
            bodyMedium: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
            bodyLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
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
  List<String> availableChoices = [
    "petanque",
    "cinema",
    "fitness",
    "League Of Legend",
    "basket",
    "shopping",
    "programming",
  ];

  List<String> selectedChoices = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Header(selectedChoices: availableChoices),
              //child: Header(selectedChoices: []),
            ),
            Expanded(
              child: Footer(availableChoices: availableChoices),
            ),
          ],
        ),
      ),
    );
  }
}
