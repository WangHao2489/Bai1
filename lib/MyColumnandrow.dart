import "package:flutter/material.dart";

class MyColumnandrow extends StatelessWidget {
  const MyColumnandrow({super.key});

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
            Row(
              children: [
                const SizedBox(height: 50),
                const Icon(Icons.add),
                const Icon(Icons.ac_unit),
                const Icon(Icons.ac_unit_sharp),
              ],
            ),
            Row(
              children: [
                Text("Đây là 123"),
                Text("Đây là 456"),
                Text("Đây là 789"),
              ],
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
