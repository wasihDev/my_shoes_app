import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesapp/addToCart/addtocart_list.dart';

class MyShoesList extends StatelessWidget {
  MyShoesList({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);
  late String image;
  late String title;
  late String price;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.cyan,
      height: 220.h,
      child: Stack(children: [
        Positioned(
          top: 25.h,
          left: 20.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Container(
              height: 180.h,
              width: 180.w,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromARGB(255, 175, 29, 219),
                      Color.fromARGB(255, 5, 149, 221)
                    ]),
              ),
            ),
          ),
        ),
        Positioned(
            left: 70.w, width: 200.w, height: 200.h, child: Image.asset(image)),
        Positioned(
            top: 10.h,
            left: 55.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 65, 192, 255),
                          Color.fromARGB(255, 0, 116, 165),
                        ]),
                  ),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const AddToCart()))),
                    child: Image.asset(
                      "icons/shopping.png",
                      color: Colors.white,
                      scale: 1.0.sp,
                    ),
                  ),
                ),
              ),
            )),
        Positioned(
            top: 140.h,
            left: 210.w,
            child: Text(
              title,
              style: const TextStyle(
                  color: Color.fromARGB(255, 104, 103, 103), fontSize: 14),
            )),
        Positioned(
            top: 155.h,
            left: 210.w,
            child: Text(
              "Nike Adapt BB",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            )),
        Positioned(
            top: 178.h,
            left: 210.w,
            child: Text(
              price,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w800),
            ))
      ]),
    );
  }
}
