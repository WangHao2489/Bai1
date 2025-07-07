import 'package:bai1/menu.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'Setting.dart';

class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  String menu = 'Share';

  @override
  Widget build(BuildContext context) {
    DateTime day = DateTime.now();
    String time = DateFormat("d MMM y").format(DateTime.now());
    // String Date = DateFormat("DD//MM//YY").format(now);
    return Scaffold(
      body: SafeArea(
        child: Container(
          // margin: EdgeInsetsGeometry.only(top: 10),
          decoration: BoxDecoration(
            color: Color(0xFF6390F0),
            borderRadius: BorderRadius.circular(20),
          ),
          // color: Colors.blue,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Menu()),
                        );
                      },
                      child: Icon(Icons.add),
                    ),
                    Padding(padding: EdgeInsets.only(left: 120)),
                    Text("123", style: TextStyle(fontSize: 24)),
                    Padding(padding: EdgeInsets.only(left: 120)),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        customButton: Icon(
                          Icons.more_vert,
                          color: Colors.black,
                          size: 25,
                        ),
                        items:
                            ['Share', 'Setting']
                                .map(
                                  (item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item),
                                  ),
                                )
                                .toList(),
                        onChanged: (value) {
                          if (value == 'Setting') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Setting(),
                              ),
                            );
                          } else if (value == 'Share') {
                            print('Bạn chọn share');
                          }
                        },
                        dropdownStyleData: DropdownStyleData(
                          width: 160,
                          padding: EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.red,
                          ),
                          offset: Offset(0, 8),
                        ),
                        menuItemStyleData: MenuItemStyleData(
                          height: 48,
                          padding: EdgeInsets.symmetric(horizontal: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 75)),
                        Image.asset(
                          "assets/images/sunday2.jpg",
                          // color: Colors.white,
                          height: 110,
                        ),
                        Padding(padding: EdgeInsets.only(left: 70)),
                        Column(
                          children: [
                            Text(
                              time,
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
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
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
                          ],
                        )
                      ],
                    ),
                  ],
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
                      "Sunday | " + time,
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
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "69% rain",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 90)),
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
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "62% rain",
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                              ),
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
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "53% rain",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "Forcats of 7days",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text(
                          "Sun",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            height: 2,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 130)),
                        Image.asset(
                          "assets/images/rain.png",
                          color: Colors.white,
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text(
                          "74% rain",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            height: 2,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 60)),
                        Text(
                          "20\u2103/24\u2103",
                          style: TextStyle(
                            fontSize: 16,
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
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "Mon",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 125)),
                    Image.asset("assets/images/sunny.png", color: Colors.white),
                    Padding(padding: EdgeInsets.only(left: 9)),
                    Text(
                      "13% rain",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 60)),
                    Text(
                      "23\u2103/27\u2103",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "Tuesday",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 94)),
                    Image.asset(
                      "assets/images/partly.png",
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 7)),
                    Text(
                      "32% rain",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 60)),
                    Text(
                      "22\u2103/25\u2103",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "Wed",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 125)),
                    Image.asset("assets/images/rain.png", color: Colors.white),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "55% rain",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 60)),
                    Text(
                      "20\u2103/24\u2103",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "Thursday",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 87)),
                    Image.asset("assets/images/rain.png", color: Colors.white),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "53% rain",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 55)),
                    Text(
                      "20\u2103/24\u2103",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                Row(children: [Friday()]),
                Row(children: [Sat()]),
                SizedBox(height: 300),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Friday() {
  return Row(
    children: [
      Padding(padding: EdgeInsets.only(left: 10)),
      Text(
        "Friday",
        style: TextStyle(fontSize: 17, color: Colors.white, height: 2),
      ),
      Padding(padding: EdgeInsets.only(left: 110)),
      Image.asset("assets/images/partly.png", color: Colors.white),
      Padding(padding: EdgeInsets.only(left: 10)),
      Text(
        "32% rain",
        style: TextStyle(fontSize: 16, color: Colors.white, height: 2),
      ),
      Padding(padding: EdgeInsets.only(left: 60)),
      Text(
        "20\u2103/24\u2103",
        style: TextStyle(fontSize: 16, color: Colors.white, height: 2),
      ),
    ],
  );
}

Widget Sat() {
  return Row(
    children: [
      Padding(padding: EdgeInsets.only(left: 10)),
      Text(
        "Sat",
        style: TextStyle(fontSize: 17, color: Colors.white, height: 2),
      ),
      Padding(padding: EdgeInsets.only(left: 133)),
      Image.asset("assets/images/sunny.png", color: Colors.white),
      Padding(padding: EdgeInsets.only(left: 10)),
      Text(
        "13% rain",
        style: TextStyle(fontSize: 16, color: Colors.white, height: 2),
      ),
      Padding(padding: EdgeInsets.only(left: 60)),
      Text(
        "23\u2103/27\u2103",
        style: TextStyle(fontSize: 16, color: Colors.white, height: 2),
      ),
    ],
  );
}
