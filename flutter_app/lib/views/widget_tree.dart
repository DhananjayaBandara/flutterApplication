import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/nav_bar_widget.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter App'), centerTitle: true),
      bottomNavigationBar: NavBarWidget(),
    );
  }
}
