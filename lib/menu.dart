import 'package:bai1/test2.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List<String> TemperatureUnit = ['\u00B0C C', '\u00B0C F'];
  String WindSpeedUnit = 'km/h';
  String Atmosphericpressureunit = 'mbar';
  String temperature = '\u00B0C';

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
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(top: 75, left: 20)),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Test2()),
                      );
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  Padding(padding: EdgeInsets.only(left: 130)),
                  Text(
                    "Setting",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        "Unit",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        "Temperature unit",
                        style: TextStyle(
                          color: Colors.white,
                          height: 2,
                          fontSize: 20,
                        ),
                      ),
                      // Spacer(),
                      Padding(padding: EdgeInsets.only(right: 170)),
                      DropdownButton<String>(
                        // padding: EdgeInsets.only(left: 190),
                        value: temperature,
                        dropdownColor: Colors.white,
                        iconEnabledColor: Colors.white,
                        style: TextStyle(color: Colors.black),
                        items: const [
                          DropdownMenuItem(
                            value: '\u00B0C',
                            child: Text('\u00B0C'),
                          ),
                          DropdownMenuItem(
                            value: '\u00B0F',
                            child: Text('\u00B0F'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            temperature = value!;
                          });
                        },
                        icon: const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    "Wind speed Unit",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      height: 2,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 200)),
                  DropdownButton(
                    value: WindSpeedUnit,
                    items: const [
                      DropdownMenuItem(value: 'km/h', child: Text('km/h')),
                      DropdownMenuItem(value: 'mil/h', child: Text('mil/h')),
                      DropdownMenuItem(value: 'm/s', child: Text('m/s')),
                      DropdownMenuItem(value: 'kn', child: Text('kn')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        WindSpeedUnit = value!;
                      });
                    },
                    icon: const SizedBox.shrink(),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    "Atmospheric pressure unit",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      height: 2,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 120)),
                  DropdownButton(
                    value: Atmosphericpressureunit,
                    items: const [
                      DropdownMenuItem(value: 'mbar', child: Text('mbar')),
                      DropdownMenuItem(value: 'atm', child: Text('atm')),
                      DropdownMenuItem(value: 'mmHg', child: Text('mmHg')),
                      DropdownMenuItem(value: 'inHg', child: Text('inHg')),
                      DropdownMenuItem(value: 'hPa', child: Text('Hpa')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        Atmosphericpressureunit = value!;
                      });
                    },
                    icon: const SizedBox.shrink(),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Container(height: 3, width: 370, color: Colors.white),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20, top: 50)),
                  Text(
                    "Extra",
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
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    "About",
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
                  Padding(padding: EdgeInsets.only(left: 20, top: 10)),
                  Text(
                    "Privacy policy",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      height: 2,
                    ),
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
