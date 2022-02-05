import 'package:flutter/material.dart';

class pivotPoint extends StatelessWidget {
  const pivotPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(
              title: "S3",
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "S2",
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "S1",
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "Pivot Point",
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "R1",
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "R2",
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "R3",
              color: Colors.grey,
            ),
          ],
        ),
        Column(
          children: [
            text(
              title: "456.87",
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "456.87",
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "456.87",
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "456.87",
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "456.87",
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "456.87",
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            text(
              title: "456.87",
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        )
      ],
    );
  }
}

class text extends StatelessWidget {
  final String title;
  final Color color;
  const text({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: color, fontWeight: FontWeight.w400, fontSize: 16),
    );
  }
}
