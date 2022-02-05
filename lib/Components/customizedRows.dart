import 'package:flutter/material.dart';

import 'customizedColumn.dart';

class exponentialRow extends StatelessWidget {
  final String title1, title2, title3;
  const exponentialRow({
    Key? key,
    required this.title1,
    required this.title2,
    required this.title3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titles = ["MA10", "MA20", "MA30", "MA40", "MA100", "MA200", "j"];
    var values = [
      "465.28",
      "465.28",
      "465.28",
      "465.28",
      "465.28",
      "465.28",
    ];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            textColumn(
              title1: titles[0],
              title2: titles[1],
              title3: titles[2],
              title4: titles[3],
              title5: titles[4],
              title6: titles[5],
              color: Colors.white,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title2,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            textColumn(
              title1: values[0],
              title2: values[1],
              title3: values[2],
              title4: values[3],
              title5: values[4],
              title6: values[5],
              color: Colors.white,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title3,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Column(
              children: [
                textBox(title: "SELL", color: Colors.red),
                textBox(title: "SELL", color: Colors.red),
                textBox(title: "BUY", color: Colors.blueAccent),
                textBox(title: "BUY", color: Colors.blueAccent),
                textBox(title: "SELL", color: Colors.red),
                textBox(title: "BUY", color: Colors.blueAccent),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class avgRow extends StatelessWidget {
  final title1;
  final title2;
  const avgRow({
    Key? key,
    this.title1,
    this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title1,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          title2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
