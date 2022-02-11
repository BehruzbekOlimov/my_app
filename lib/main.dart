import 'package:flutter/material.dart';
import 'package:my_app/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      primarySwatch: Colors.pink,
      canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
        bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
        bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
        headline6: const TextStyle(
          fontSize: 24,
          fontFamily: 'RobotoCondensed',
        ),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(secondary: Colors.amber)),
      home: const CategoriesScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text(
          'Navigation & Multiple Screens',
        ),
      ),
    );
  }
}