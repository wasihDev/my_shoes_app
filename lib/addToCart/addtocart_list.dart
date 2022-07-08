import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesapp/mianScreen/mainScreen.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 236, 236),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
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
                  child: Stack(children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 16.0.r, right: 16.r, top: 16.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const MainScreen())));
                            },
                            child: Image.asset("icons/home3_solid.png",
                                height: 20.h,
                                width: 30.w,
                                color:
                                    const Color.fromARGB(255, 235, 235, 235)),
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
                                  color:
                                      const Color.fromARGB(255, 196, 196, 196),
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
                                  color: const Color.fromARGB(54, 155, 39, 176),
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
                    Positioned(
                      top: 30.h,
                      left: 70.w,
                      child: Container(
                          child: Image.asset(
                        "images/shos4.png",
                        height: 250.h,
                        width: 220.w,
                      )),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.0.r),
                  child: Text("Nike Adapt BB 2.0 Black",
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.0.r),
                  child: Text(
                    "Build for Natural Motion The Nike Flex Shoes",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0.r),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 238, 218, 41),
                        size: 20.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 238, 218, 41),
                        size: 20.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 238, 218, 41),
                        size: 20.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 238, 218, 41),
                        size: 20.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 238, 218, 41),
                        size: 20.sp,
                      ),
                      Text(
                        " 5.0 ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "(3.6k Reviews)",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
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
                Padding(
                  padding: EdgeInsets.only(left: 16.0.r),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        customRadio("06", 0),
                        customRadio("07", 1),
                        customRadio("08", 2),
                        customRadio("09", 3),
                        customRadio("10", 4),
                        customRadio("14", 5),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 16.0.r),
                    child: Row(
                      children: [
                        Text(
                          "Colors Available :  ",
                          style: TextStyle(
                              fontSize: 24.sp, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 12.r,
                            backgroundColor: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        CircleAvatar(
                          radius: 12.r,
                          backgroundColor: Colors.yellow,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        CircleAvatar(
                          radius: 12.r,
                          backgroundColor: Colors.green,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        CircleAvatar(
                          radius: 12.r,
                          backgroundColor: Colors.red,
                        )
                      ],
                    )),
                SizedBox(height: 20.h),
                Padding(
                    padding: EdgeInsets.only(left: 18.0.r, bottom: 50.r),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 130.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 84, 195, 243),
                                  Color.fromARGB(255, 2, 81, 172),
                                ]),
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "As you Know these \nare many factors that \ngo with int a successful \ntrade program ",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  )),
                              SizedBox(height: 25.r),
                              Text('More Details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22.sp))
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }

  int selected = 0;

  Widget customRadio(String text, int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: FlatButton(
        color: (selected == index)
            ? const Color.fromARGB(255, 55, 112, 197)
            : const Color.fromARGB(255, 247, 247, 247),
        height: 60,
        minWidth: 60,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        onPressed: () {
          setState(() {
            selected = index;
          });
        },
        child: Text(
          text,
          style: TextStyle(
              color: (selected == index) ? Colors.white : Colors.grey[500]),
        ),
      ),
    );
  }
}
