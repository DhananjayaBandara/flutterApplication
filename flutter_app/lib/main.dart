import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/nav_bar_widget.dart';

void main() {
  runApp(const MyApp());
}

String? title = 'My Flutter Application'; // ?- title value can be null

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

// Statefull - can refresh
// stateless - can't refresh
// setState - to refresh the screen( Telling the flutter to I want to refresh the screen now

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!), // ! - The value for title is not null currently,
        centerTitle: true,
      ),
      bottomNavigationBar: NavBarWidget(),
    );
  }
}
