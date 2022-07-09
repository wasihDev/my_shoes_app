// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../addToCart/addtocart_list.dart';

class ExploreNike extends StatelessWidget {
  const ExploreNike({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Slidable(
      startActionPane:
          ActionPane(motion: const ScrollMotion(), extentRatio: 0.15,
              // A pane can dismiss the Slidable.

              children: [
            // All actions are defined in the children parameter.
            Expanded(
              child: Card(
                color: Colors.black,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.share,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 30,
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
      child: SizedBox(
          // color: Colors.yellow,
          height: 110.h,
          width: 500.w,
          child: Stack(children: [
            Positioned(
                top: 5.h,
                left: 6.w,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 175, 29, 219),
                              Color.fromARGB(255, 5, 149, 221)
                            ]),
                      ),
                    ))),
            Positioned(
                left: 25.w,
                height: 110.h,
                width: 110.w,
                child: Image.asset(image)),
            Positioned(
                left: 150,
                top: 17,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w800)),
                    SizedBox(height: 6.h),
                    Row(
                      children: [
                        Text(
                          "\$$price",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 151, 151, 151)),
                        ),
                        SizedBox(width: 12.w),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20.sp,
                        ),
                      ],
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      children: [
                        RaisedButton(
                          splashColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const AddToCart()))),

                          // ignore: sort_child_properties_last
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.black,
                        ),
                        const SizedBox(width: 10),
                        // ignore:
                        RaisedButton(
                            splashColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            onPressed: () {},
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  ],
                ))
          ])),
    ));
  }
}
