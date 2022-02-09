import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:market/Cards/time.dart';
import 'package:market/Components/customizedRows.dart';
import 'package:market/models/dataInfo.dart';
import 'package:market/services/api_manager.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isselected = false;
  late Future<Data> _dataModel;
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
    'Simple',
  ];
  String dropdownvalue3 = 'Classic';
  var items3 = [
    'Classic',
    'Item 2',
  ];

  @override
  void initState() {
    _dataModel = API_Manager().getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          child: FutureBuilder<Data>(
            future: _dataModel,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      var article = snapshot.data;

                      return Container(
                          height: 2000,
                          margin: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 26.0,
                                  vertical: 16,
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
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
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
                              Padding(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, top: 2),
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
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.vertical(
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
                                                      _isselected =
                                                          !_isselected;
                                                    });
                                                  },
                                                  child: Container(
                                                    height:
                                                        _isselected ? 80 : 70,
                                                    width:
                                                        _isselected ? 40 : 30,
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
                                                    borderRadius:
                                                        const BorderRadius
                                                                .vertical(
                                                            bottom:
                                                                Radius.circular(
                                                                    12)),
                                                    color:
                                                        Colors.redAccent[400],
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      times(),
                                    ],
                                  ),
                                ],
                              ),
                              Text("Moving averages",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                  )),
                              SizedBox(
                                height: 18,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                    child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent[700],
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Center(
                                      child: Text(
                                    "BUY",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  avgRow(
                                    title1:
                                        article?.the15Min.movingAverages.buy,
                                    title2: "Buy",
                                  ),
                                  avgRow(
                                    title1: "-",
                                    title2: "Neutral",
                                  ),
                                  avgRow(
                                    title1:
                                        article?.the15Min.movingAverages.sell,
                                    title2: "Sell",
                                  )
                                ],
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 26.0,
                                    vertical: 15,
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      dropdownColor: Colors.white10,
                                      elevation: 0,
                                      isExpanded: false,
                                      value: dropdownvalue2,
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.grey,
                                      ),
                                      items: items2.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(
                                            items,
                                            style: const TextStyle(
                                              color: Colors.white70,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue2 = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Period",
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                    Text(
                                      "Value",
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                    Text(
                                      "Type",
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                  ]),
                              SizedBox(
                                height: 24,
                              ),
                              Container(
                                height: 220,
                                child: ListView.builder(
                                    itemCount: article?.the15Min.movingAverages
                                        .tableData.exponential.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '${article!.the15Min.movingAverages.tableData.exponential[index].$title}',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                '${article.the15Min.movingAverages.tableData.exponential[index].value}',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                '${snapshot.data?.the15Min.movingAverages.tableData.exponential[index].$type}',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 17),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 14,
                                          ),
                                        ],
                                      );
                                    }),
                              ),
                              Text("Oscillators",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                  )),
                              SizedBox(
                                height: 28,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                    child: Container(
                                  height: 30,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                      child: Text(
                                    article!.the1Min.movingAverages.text
                                        .toString(),
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  avgRow(
                                    title1:
                                        article.daily.technicalIndicator.buy,
                                    title2: "Buy",
                                  ),
                                  avgRow(
                                    title1: article
                                        .daily.technicalIndicator.neutral,
                                    title2: "Neutral",
                                  ),
                                  avgRow(
                                    title1:
                                        article.daily.technicalIndicator.sell,
                                    title2: "Sell",
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Name",
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                    Text(
                                      "Value",
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                    Text(
                                      "Action",
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                  ]),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                child: Expanded(
                                  child: ListView.builder(
                                      itemCount: article.daily
                                          .technicalIndicator.tableData.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  article
                                                      .daily
                                                      .technicalIndicator
                                                      .tableData[index]
                                                      .name,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 17),
                                                ),
                                                Text(
                                                  article
                                                      .daily
                                                      .technicalIndicator
                                                      .tableData[index]
                                                      .value,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 17),
                                                ),
                                                Text(
                                                  article
                                                      .daily
                                                      .technicalIndicator
                                                      .tableData[index]
                                                      .action
                                                      .toString(),
                                                  softWrap: true,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 17),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 14,
                                            ),
                                          ],
                                        );
                                      }),
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Text("Pivot Points",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                  )),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0,
                                    vertical: 25,
                                  ),
                                  child: Container(
                                    width: 120,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        alignment: Alignment.topLeft,
                                        elevation: 0,
                                        isExpanded: false,
                                        value: dropdownvalue3,
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.grey,
                                        ),
                                        items: items3.map((String items) {
                                          return DropdownMenuItem(
                                            value: items,
                                            child: Text(
                                              items,
                                              style: const TextStyle(
                                                color: Colors.white70,
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownvalue3 = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: ListView.builder(
                                      itemCount: article.the15Min.pivotPoints
                                          .classic.pivotPoints.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('  R$index',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 17)),
                                                Text(
                                                    article.the15Min.pivotPoints
                                                        .classic.s1,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 17))
                                              ],
                                            )
                                          ],
                                        );
                                      }))
                            ],
                          ));
                    });
              } else
                return Center(
                    child: CircularProgressIndicator(
                  color: Colors.white,
                ));
            },
          ),
        ),
      ),
    );
  }
}
