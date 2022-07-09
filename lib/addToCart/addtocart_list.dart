// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesapp/mianScreen/mainScreen.dart';
import 'package:shoesapp/transition.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({
    Key? key,
  }) : super(key: key);

  get listShoes => [
        'images/J_001.png',
        'images/J_002.png',
        'images/J_003.png',
        'images/J_004.png',
      ];

  get colors => [
        const Color(0xffEAA906),
        const Color(0xff08BB94),
        const Color(0xffB50D0D),
        const Color(0xff229954)
      ];
  get lightcolors => [
        const Color.fromARGB(88, 234, 169, 6),
        const Color.fromARGB(101, 8, 187, 148),
        const Color.fromARGB(96, 181, 13, 13),
        const Color.fromARGB(99, 34, 153, 84)
      ];
  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int valueIndexSize = 2;
  int colorIndex = 0;

  double sizeShoes(int index, Size size) {
    switch (index) {
      case 0:
        return (size.height * 0.15);
      case 1:
        return (size.height * 0.14);
      case 2:
        return (size.height * 0.12);
      case 3:
        return (size.height * 0.10);
      default:
        return (size.height * 0.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 236, 236),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShakeTransition(
                  child: Container(
                    height: 320.h,
                    width: 450.w,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color.fromARGB(255, 5, 149, 221),
                            Color.fromARGB(255, 175, 29, 219),
                          ]),
                    ),
                    child: ShakeTransition(
                      child: Stack(children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 18.0.r, right: 18.r, top: 20.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ShakeTransition(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Image.asset("icons/home3_solid.png",
                                      height: 20.h,
                                      width: 30.w,
                                      color: const Color.fromARGB(
                                          255, 235, 235, 235)),
                                ),
                              ),
                              const Icon(Icons.share,
                                  color: Color.fromARGB(255, 243, 243, 243)),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 50.h,
                          left: 53.w,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 128.r,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(180),
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 196, 196, 196),
                                      width: 0.5.w)),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 75.h,
                          left: 80.w,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 100.r,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(180),
                                  border: Border.all(
                                      color: widget.lightcolors[colorIndex],
                                      width: 15.w)),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 43.h,
                          left: 128.w,
                          child: CircleAvatar(
                            radius: 16.r,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 84, 195, 243),
                                      Color.fromARGB(255, 2, 81, 172),
                                    ]),
                                borderRadius: BorderRadius.circular(180.r),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 240.h,
                          left: 258.r,
                          child: CircleAvatar(
                            radius: 10.r,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 84, 195, 243),
                                      Color.fromARGB(255, 2, 81, 172),
                                    ]),
                                borderRadius: BorderRadius.circular(180.r),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 200.h,
                          left: 55.r,
                          child: CircleAvatar(
                            radius: 8.r,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 84, 195, 243),
                                      Color.fromARGB(255, 2, 81, 172),
                                    ]),
                                borderRadius: BorderRadius.circular(180.r),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 150.h,
                          left: 8.r,
                          child: CircleAvatar(
                              radius: 16.r,
                              backgroundColor:
                                  const Color.fromARGB(87, 209, 242, 248),
                              child: Icon(
                                size: 16.r,
                                Icons.arrow_back_ios_new_rounded,
                                color: const Color.fromARGB(197, 255, 255, 255),
                              )),
                        ),
                        Positioned(
                          top: 150.h,
                          left: 320.r,
                          child: CircleAvatar(
                              radius: 16.r,
                              backgroundColor:
                                  const Color.fromARGB(87, 209, 242, 248),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 16.r,
                                color: const Color.fromARGB(197, 255, 255, 255),
                              )),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 250),
                          top: sizeShoes(valueIndexSize, size),
                          left: sizeShoes(valueIndexSize, size),
                          right: sizeShoes(valueIndexSize, size),
                          child: Image.asset(widget.listShoes[colorIndex]),
                        ),
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ShakeTransition(
                  child: Padding(
                    padding: EdgeInsets.only(left: 18.0.r),
                    child: Text("Nike Adapt BB 2.0 Black",
                        style: TextStyle(
                            fontSize: 24.sp, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                ShakeTransition(
                  child: Padding(
                    padding: EdgeInsets.only(left: 18.0.r),
                    child: Text(
                      "Build for Natural Motion The Nike Flex Shoes",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                ShakeTransition(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0.r),
                    child: Row(
                      children: [
                        Row(
                            children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: widget.colors[colorIndex],
                            size: 20.sp,
                          ),
                        )),
                        ShakeTransition(
                          child: Text(
                            " 5.0 ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        ShakeTransition(
                          left: false,
                          child: Text(
                            "(3.6k Reviews)",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.r),
                  child: Text(
                    "Shoe Size ",
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                ShakeTransition(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0.r),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          customRadio("07", 0),
                          customRadio("08", 1),
                          customRadio("09", 2),
                          customRadio("10", 3),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(children: [
                  ShakeTransition(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0.r),
                      child: Text(
                        "Colors Available :  ",
                        style: TextStyle(
                            fontSize: 24.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ShakeTransition(
                    left: false,
                    child: Row(
                        children: List.generate(
                            4,
                            (index) => GestureDetector(
                                onTap: () {
                                  colorIndex = index;
                                  setState(() {});
                                },
                                child: Container(
                                    margin: EdgeInsets.only(right: 8.r),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: widget.colors[index],
                                        shape: BoxShape.circle,
                                        border: (index == colorIndex)
                                            ? Border.all(
                                                color: Colors.white, width: 2.5)
                                            : null))))),
                  )
                ]),
                SizedBox(height: 20.h),
                Padding(
                    padding: EdgeInsets.only(left: 18.0.r, bottom: 50.r),
                    child: ShakeTransition(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: widget.colors[colorIndex],
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("icons/shopping.png",
                                    color: Colors.white),
                                const Text("\$250",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18.r),
                            child: ShakeTransition(
                              left: false,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "As you Know these \nare many factors that \ngo with int a successful \ntrade program ",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                      )),
                                  SizedBox(height: 25.r),
                                  Text('More Details',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22.sp))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ));
  }

  int selected = 2;

  Widget customRadio(String text, int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: GestureDetector(
        onTap: () {
          valueIndexSize = index;
          setState(() {});
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: (valueIndexSize == index)
                  ? widget.colors[colorIndex]
                  : const Color.fromARGB(255, 247, 247, 247),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: (valueIndexSize == index)
                      ? Colors.white
                      : Colors.grey[500]),
            ),
          ),
        ),
      ),
    );
  }
}
