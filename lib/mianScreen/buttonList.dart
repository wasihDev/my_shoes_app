// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyButtonList extends StatefulWidget {
  MyButtonList({
    Key? key,
    // required this.textColor,
    // required this.backgroundColor,
    // required this.text,
    // this.icon,
    // required this.Hsize,
    // required this.Wsize,
    // required this.borderColor
  }) : super(key: key);

  // final Color textColor;
  // final Color borderColor;
  // final Color backgroundColor;
  // final String text;
  // IconData? icon;
  // double Hsize;
  // double Wsize;

  @override
  State<MyButtonList> createState() => _MyButtonListState();
}

class _MyButtonListState extends State<MyButtonList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }
}

// Container(

//       width: widget.Wsize,
//       height: widget.Hsize,
//       decoration: BoxDecoration(
//           color: widget.backgroundColor,
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(color: widget.borderColor)),
//       child: Center(
//         child: Text(widget.text,
//             style: TextStyle(color: widget.textColor, fontWeight: FontWeight.w500)),
//       ),
//     );
