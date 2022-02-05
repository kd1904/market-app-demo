import 'package:flutter/material.dart';

import 'customizedColumn.dart';

class oscillatorsRow extends StatelessWidget {
  final String title1, title2, title3;
  const oscillatorsRow(
      {Key? key,
      required this.title1,
      required this.title2,
      required this.title3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titles = [
      "RSI(14)",
      "CCI(20)",
      "ADI(14)",
      "Awesome\nOscillator",
      "Momentum(10)",
      "Stochastic RSI\nFast(3,3,14,14)",
      "William %R\n(14)",
      "Bull Bear Power",
      "Ultimate Oscillator\n(7,14,28)"
    ];
    var values = [
      "-53.6549",
      "-53.6549",
      "-53.6549",
      "-53.6549",
      "-53.6549",
      "-53.6549",
      "-53.6549"
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title1,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Container(
              width: 80,
              child: Center(
                child: Text(
                  title2,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ),
            Container(
              width: 80,
              child: Center(
                child: Text(
                  title3,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 28,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              child: Text(
                titles[0],
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Text(
                values[0],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Center(
                child: Text(
                  "NEUTRAL",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              child: Text(
                titles[1],
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Text(
                values[1],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Center(
                child: Text(
                  "BUY",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              child: Text(
                titles[2],
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Text(
                values[2],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Center(
                child: Text(
                  "SELL",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              child: Text(
                titles[3],
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Text(
                values[3],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Center(
                child: Text(
                  "SELL",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              child: Text(
                titles[4],
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Text(
                values[4],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Center(
                child: Text(
                  "SELL",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              child: Text(
                titles[5],
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Text(
                values[0],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Center(
                child: Text(
                  "SELL",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              child: Text(
                titles[6],
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Text(
                values[6],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Center(
                child: Text(
                  "SELL",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              child: Text(
                titles[7],
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Text(
                values[0],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Container(
              width: 90,
              child: Center(
                child: Text(
                  "          LESS\nVOLATAILE",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
