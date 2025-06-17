import "package:flutter/material.dart";

class Mycontainer extends StatelessWidget {
  const Mycontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hihi"),
        backgroundColor: Colors.yellow,
        elevation: 45,
        actions: [
          IconButton(
            onPressed: () {
              print("B1");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("B2");
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              print("B3");
            },
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),

      body: Center(
        child: Container(
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.deepOrange.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 12,
                offset: const Offset(0, 3)
              )
            ]
          ),

          child: Align(
            alignment: Alignment.center,
            child: const Text(
                "Đây là một hình hộp",style:TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),),
          ),
        ),
      ),
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
