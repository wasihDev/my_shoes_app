import 'dart:developer';

import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, right: 100),
            child: Text(
              "Get 20% Discount New Arrival",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text:
                        "Considering the booming sales of a of a wide range of footwear products through both online and offline distribution channels,",
                    style: TextStyle(fontSize: 16, color: Colors.black)),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
