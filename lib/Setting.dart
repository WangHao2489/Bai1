import 'package:bai1/Test2.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20, top: 70)),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Test2()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 25,
                      weight: 16,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 100)),
                  Text(
                    textAlign: TextAlign.center,
                    "Manage location",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
              Container(
                width: 320,
                padding: EdgeInsets.only(top: 5),
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search your city",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                width: 326,
                height: 80,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 20)),
                            Text(
                              "Malang",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(Icons.location_on_outlined, size: 16),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 60)),
                            Text(
                              "20\u2103/24\u2103",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 240)),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Image.asset("assets/images/sunday.jpg", width: 35),
                        Text("Heavy Rain"),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 326,
                height: 80,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 20)),
                            Text("Banyuwangi", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 30)),
                            Text(
                              "22\u2106/26\u2106",
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Padding(padding: EdgeInsets.only(left: 230)),
                        Image.asset("assets/images/sunday.jpg", width: 35),
                        Text("Heavy rain", style: TextStyle(fontSize: 19)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 326,
                height: 80,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 20)),
                            Text("Jakarta", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 76)),
                            Text(
                              "27\u2106/28\u2106",
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Padding(padding: EdgeInsets.only(left: 250)),
                        Image.asset("assets/images/sunday.jpg", width: 35),
                        Text("Cloudy", style: TextStyle(fontSize: 19)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
