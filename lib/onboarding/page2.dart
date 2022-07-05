import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 20, right: 100),
          child: Text(
            "April 50% of On New Best Arrival",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "So, the Orbit last at YSL becomes the basis fortwo styles, the Ocean (a dressy pump) and the Osaka (an ankle boot with a covered heel) ",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
