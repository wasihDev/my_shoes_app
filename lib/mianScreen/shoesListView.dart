import 'package:flutter/material.dart';

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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.38,
      child: Stack(children: [
        Positioned(
          top: 110,
          left: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 180,
              width: 180,
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
        Positioned(height: 350, child: Image.asset(image)),
        Positioned(
            top: 92,
            left: 55,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 45,
                  width: 50,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 65, 192, 255),
                          Color.fromARGB(255, 0, 116, 165),
                        ]),
                  ),
                  child: Image.asset(
                    "icons/shopping.png",
                    color: Colors.white,
                    scale: 1.1,
                  ),
                ),
              ),
            )),
        Positioned(
            top: 218,
            left: 220,
            child: Text(
              title,
              style: const TextStyle(
                  color: Color.fromARGB(255, 104, 103, 103), fontSize: 14),
            )),
        const Positioned(
            top: 236,
            left: 220,
            child: Text(
              "Nike Adapt BB",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            )),
        Positioned(
            top: 260,
            left: 220,
            child: Text(
              price,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w800),
            ))
      ]),
    );
  }
}
