import 'package:flutter/material.dart';
import 'package:shoesapp/mianScreen/buttonList.dart';
import 'package:shoesapp/mianScreen/explore_screenList.dart';
import 'package:shoesapp/mianScreen/mainScreen.dart';
import 'package:shoesapp/mianScreen/shoesListView.dart';
import 'package:shoesapp/onboarding/onBoardingScreen.dart';

import 'addToCart/addtocart_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddToCart(),
    );
  }
}
