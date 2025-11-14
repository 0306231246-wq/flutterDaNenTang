import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<StatefulWidget> createState() => _Homescreen();
}

class _Homescreen extends State<Homescreen> {
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center()));
  }
}
