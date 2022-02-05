import 'package:flutter/material.dart';

class time_summary extends StatefulWidget {
  final String title;
  const time_summary({Key? key, required this.title}) : super(key: key);

  @override
  _time_summaryState createState() => _time_summaryState();
}

// ignore: camel_case_types
class _time_summaryState extends State<time_summary> {
  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;
    return Column(children: [
      InkWell(
        onTap: () {
          setState(() {
            _isSelected = !_isSelected;
            print(_isSelected);
          });
        },
        hoverColor: Colors.blue,
        child: Container(
          height: 30,
          width: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: _isSelected ? Colors.white : Colors.grey,
                width: _isSelected ? 0.8 : 0.7,
              )),
          child: Center(
              child: Text(
            widget.title,
            style: TextStyle(
                color: _isSelected ? Colors.white : Colors.grey[600],
                fontWeight: FontWeight.w400,
                fontSize: 15),
          )),
        ),
      ),
      const SizedBox(
        height: 9,
      ),
    ]);
  }
}

// ignore: camel_case_types
class times extends StatefulWidget {
  const times({Key? key}) : super(key: key);

  @override
  _timesState createState() => _timesState();
}

class _timesState extends State<times> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        time_summary(
          title: '1 MIN',
        ),
        time_summary(
          title: '5 MIN',
        ),
        time_summary(
          title: '15 MIN',
        ),
        time_summary(
          title: '30 MIN',
        ),
        time_summary(
          title: '1 HR',
        ),
        time_summary(
          title: '5 HR',
        ),
        time_summary(
          title: '1 DAY',
        ),
        time_summary(
          title: '1 WK',
        ),
        time_summary(
          title: '1 MON',
        ),
      ],
    );
  }
}
