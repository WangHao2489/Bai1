import "package:flutter/material.dart";

class Mytext extends StatelessWidget {
  const Mytext({super.key});

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
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text("Cai nit ne"),
            const SizedBox(height: 20),

            const Text(
              "Xin Chao tui may tao moi hoc bai nay tui may chi dan tao",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight:
              FontWeight.bold,
                  fontSize: 25,
                  color: Colors.deepOrange,
              letterSpacing: 2.0,),
            ),
          ],
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
