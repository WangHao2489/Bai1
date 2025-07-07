import 'package:flutter/material.dart';

class Mytextfield2 extends StatefulWidget {
  const Mytextfield2({super.key});

  @override
  State<Mytextfield2> createState() => _Mytextfield2State();
}

class _Mytextfield2State extends State<Mytextfield2> {
  final _textController = TextEditingController();
  String _inputText = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App 02"),
          backgroundColor: Colors.yellow,
          elevation: 4,
          actions: [
            IconButton(onPressed: (){
              print("b1");
            },
             icon: Icon(Icons.search)),
          ],
        ),
    );
  }
}