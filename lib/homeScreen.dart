import 'package:flutter/material.dart';
import 'package:market/Components/customizedColumn.dart';
import 'package:market/Components/pivotPoints.dart';
import 'package:market/pages/homePage.dart';

import 'Cards/time.dart';
import 'Components/Oscillators.dart';
import 'Components/customizedRows.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool _isselected = false;
  String dropdownvalue = 'Technical Indicators';
  var items = [
    'Technical Indicators',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue2 = 'Exponential';
  var items2 = [
    'Exponential',
    'Item 2',
  ];
  String dropdownvalue3 = 'Classic';
  var items3 = [
    'Classic',
    'Item 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
      child: ListView(children: [
        Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 26.0,
                  vertical: 15,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    elevation: 0,
                    isDense: true,
                    isExpanded: true,
                    value: dropdownvalue,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Center(
                child: Text(
                  "Summary",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 2),
                  child: Column(
                    children: [
                      Container(
                          height: 400,
                          width: 25,
                          child: ListView(
                            padding: EdgeInsets.all(8),
                            children: <Widget>[
                              const SizedBox(
                                height: 22,
                              ),
                              Container(
                                height: 70,
                                width: 20,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(12),
                                  ),
                                  color: Colors.blue,
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _isselected = !_isselected;
                                  });
                                },
                                child: Container(
                                  height: _isselected ? 80 : 70,
                                  width: _isselected ? 40 : 30,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[700],
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.red[900],
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.vertical(
                                      bottom: Radius.circular(12)),
                                  color: Colors.redAccent[400],
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Column(
                  children: const [
                    // times(),
                  ],
                ),
              ],
            ),
            HomePage(),
            // const Padding(
            //   padding: EdgeInsets.all(15.0),
            //   child: Center(
            //     child: Text(
            //       "Moving Averages",
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.w300,
            //           fontSize: 18),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Center(
            //       child: Container(
            //     height: 30,
            //     width: 60,
            //     decoration: BoxDecoration(
            //         color: Colors.blueAccent[700],
            //         borderRadius: BorderRadius.circular(8)),
            //     child: const Center(
            //         child: Text(
            //       "BUY",
            //       style: TextStyle(color: Colors.white),
            //     )),
            //   )),
            // ),
            // SizedBox(
            //   height: 8,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: const [
            //     avgRow(
            //       title1: "7",
            //       title2: "Buy",
            //     ),
            //     avgRow(
            //       title1: "-",
            //       title2: "Neutral",
            //     ),
            //     avgRow(
            //       title1: "5",
            //       title2: "Sell",
            //     )
            //   ],
            // ),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: 26.0,
            //       vertical: 15,
            //     ),
            //     child: DropdownButtonHideUnderline(
            //       child: DropdownButton(
            //         elevation: 0,
            //         isExpanded: false,
            //         value: dropdownvalue2,
            //         icon: const Icon(
            //           Icons.keyboard_arrow_down,
            //           color: Colors.grey,
            //         ),
            //         items: items2.map((String items) {
            //           return DropdownMenuItem(
            //             value: items,
            //             child: Text(
            //               items,
            //               style: const TextStyle(
            //                 color: Colors.white70,
            //               ),
            //             ),
            //           );
            //         }).toList(),
            //         onChanged: (String? newValue) {
            //           setState(() {
            //             dropdownvalue2 = newValue!;
            //           });
            //         },
            //       ),
            //     ),
            //   ),
            // ),
            // exponentialRow(title1: "Period", title2: "Value", title3: "Action"),
            // Padding(
            //   padding: const EdgeInsets.all(25.0),
            //   child: Center(
            //     child: Text(
            //       "Oscillators",
            //       style: const TextStyle(color: Colors.white, fontSize: 19),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Center(
            //       child: Container(
            //     height: 30,
            //     width: 120,
            //     decoration: BoxDecoration(
            //         color: Colors.redAccent[400],
            //         borderRadius: BorderRadius.circular(8)),
            //     child: const Center(
            //         child: Text(
            //       "STRONG SELL",
            //       style: TextStyle(color: Colors.white),
            //     )),
            //   )),
            // ),
            // SizedBox(
            //   height: 8,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: const [
            //     avgRow(
            //       title1: "1",
            //       title2: "Buy",
            //     ),
            //     avgRow(
            //       title1: "1",
            //       title2: "Neutral",
            //     ),
            //     avgRow(
            //       title1: "9",
            //       title2: "Sell",
            //     ),
            //   ],
            // ),
            // oscillatorsRow(title1: "Name", title2: "Value", title3: "Action"),
            // SizedBox(
            //   height: 35,
            // ),
            // Text(
            //   "Pivot Points",
            //   style: TextStyle(color: Colors.white, fontSize: 18),
            // ),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: 22.0,
            //       vertical: 25,
            //     ),
            //     child: Container(
            //       width: 120,
            //       child: DropdownButtonHideUnderline(
            //         child: DropdownButton(
            //           alignment: Alignment.topLeft,
            //           elevation: 0,
            //           isExpanded: false,
            //           value: dropdownvalue3,
            //           icon: const Icon(
            //             Icons.keyboard_arrow_down,
            //             color: Colors.grey,
            //           ),
            //           items: items3.map((String items) {
            //             return DropdownMenuItem(
            //               value: items,
            //               child: Text(
            //                 items,
            //                 style: const TextStyle(
            //                   color: Colors.white70,
            //                 ),
            //               ),
            //             );
            //           }).toList(),
            //           onChanged: (String? newValue) {
            //             setState(() {
            //               dropdownvalue3 = newValue!;
            //             });
            //           },
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            pivotPoint(),
          ],
        ),
      ]),
    );
  }
}
