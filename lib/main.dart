import 'package:bai1/MyColumnandrow.dart';
import 'package:bai1/MyText.dart';
import 'package:flutter/material.dart';
import 'MyScaffold.dart';
import 'MyAppbar.dart';
import 'MyText.dart';
import 'MyContainer.dart';
import 'MyColumnandrow.dart';
import 'Test.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Test(),
    );
  }
}
