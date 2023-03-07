import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyHomeApp(),
  ));
}






class MyHomeApp extends StatefulWidget {
  const MyHomeApp({super.key});

  @override
  State<MyHomeApp> createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}