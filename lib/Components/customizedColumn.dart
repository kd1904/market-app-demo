import 'package:flutter/material.dart';

class textColumn extends StatelessWidget {
  String title1, title2, title3, title4, title5, title6;
  final Color color;
  textColumn({
    Key? key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.title5,
    required this.title6,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Text(
          title1,
          style: TextStyle(
              color: color, fontWeight: FontWeight.w400, fontSize: 17),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          title2,
          style: TextStyle(
              color: color, fontWeight: FontWeight.w400, fontSize: 17),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          title3,
          style: TextStyle(
              color: color, fontWeight: FontWeight.w400, fontSize: 17),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          title4,
          style: TextStyle(
              color: color, fontWeight: FontWeight.w400, fontSize: 17),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          title5,
          style: TextStyle(
              color: color, fontWeight: FontWeight.w400, fontSize: 17),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          title6,
          style: TextStyle(
              color: color, fontWeight: FontWeight.w400, fontSize: 17),
        ),
      ],
    );
  }
}

class textBox extends StatelessWidget {
  final String title;
  final Color color;
  const textBox({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Text(
          title,
          style: TextStyle(
              color: color, fontWeight: FontWeight.w400, fontSize: 17),
        ),
      ],
    );
  }
}
