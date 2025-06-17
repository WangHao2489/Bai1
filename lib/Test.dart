import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
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
                "assets/images/sunday.png",
                color: Colors.white,
                height: 200,
              ),
              Text(
                "Sunday | Nov 14",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  height: 3,
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
              SizedBox(height: 8),
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
                  Icon(Icons.add_call,color: Colors.white,),
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
            ],
          ),
        ),
      ),
    );
  }
}
