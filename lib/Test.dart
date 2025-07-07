import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.add),
                  Text("123", style: TextStyle(fontSize: 24)),
                  Icon(Icons.more_vert_sharp),
                ],
              ),
              Image.asset(
                "assets/images/sunday2.jpg",
                // color: Colors.white,
                height: 110,
              ),
              Text(
                "Sunday | Nov 14",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  height: 2,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                "24°",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 26,
                  color: Colors.white,
                  height: 2,
                ),
              ),
              Text(
                "Heavy rain",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  color: Colors.white,
                  height: 2,
                ),
              ),
              SizedBox(height: 3),
              Container(height: 3, width: 350, color: Colors.white),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(Icons.ac_unit, color: Colors.white),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "3.7 km/h",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                      Text(
                        "Wind",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(Icons.add, color: Colors.white),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "74%",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                      Text(
                        "Chance of rain",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(Icons.healing, color: Colors.white),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1010 mbar",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                      Text(
                        "Pressure",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(Icons.add_call, color: Colors.white),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "83%",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                      Text(
                        "Humidity",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    "Sunday | Nov 14",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 110)),
                      Text(
                        "Now",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                      Image.asset(
                        "assets/images/sunday.jpg",
                        color: Colors.white,
                        height: 30,
                      ),
                      Text(
                        "20\u2103/24\u2103",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      Text(
                        "74% rain",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          // Padding(padding: EdgeInsets.only(bottom: 4)),
                          Text(
                            "10:00",
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              // bottom: 5,
                            ),
                          ),
                          Image.asset(
                            "assets/images/sunday.jpg",
                            height: 30,
                            color: Colors.white,
                          ),
                          Text(
                            "20\u2103/24\u2103",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          Text(
                            "69% rain",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 100)),
                          Text(
                            "11:00",
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              // bottom: 5,
                            ),
                          ),
                          Image.asset(
                            "assets/images/sunday.jpg",
                            height: 30,
                            color: Colors.white,
                          ),
                          Padding(padding: EdgeInsets.only(left: 120)),
                          Text(
                            "20\u2103/24\u2103",
                            style: TextStyle(fontSize: 19, color: Colors.white),
                          ),
                          Text(
                            "62% rain",
                            style: TextStyle(fontSize: 19, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 100)),
                          Text(
                            "12:00",
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              // bottom: 5,
                            ),
                          ),
                          Image.asset(
                            "assets/images/sunday.jpg",
                            height: 30,
                            color: Colors.white,
                          ),
                          Padding(padding: EdgeInsets.only(right: 100)),
                          Text(
                            "20\u2103/24\u2103",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          Text(
                            "53% rain",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
