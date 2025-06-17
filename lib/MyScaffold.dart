import "package:flutter/material.dart";

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hihi")),
      backgroundColor: Colors.green,
      body: Center(child: Text("123")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Success");
        },
        child: const Icon(Icons.add_ic_call),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm kiêm"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Thêm"),
        ],
      ),
    );
  }
}
