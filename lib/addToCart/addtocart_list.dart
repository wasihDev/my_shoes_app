import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  AddToCart({Key? key}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 236, 236),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.5,
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
                    Positioned(
                      top: 60,
                      left: 85,
                      child: Container(
                        height: height * 0.35,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(180),
                            border: Border.all(
                                color: const Color.fromARGB(255, 196, 196, 196),
                                width: 0.5)),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 128,
                      child: Container(
                        height: height * 0.05,
                        width: width * 0.08,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 84, 195, 243),
                                Color.fromARGB(255, 2, 81, 172),
                              ]),
                          borderRadius: BorderRadius.circular(180),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 265,
                      left: 275,
                      child: Container(
                        height: height * 0.03,
                        width: width * 0.05,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 84, 195, 243),
                                Color.fromARGB(255, 2, 81, 172),
                              ]),
                          borderRadius: BorderRadius.circular(180),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 230,
                      left: 90,
                      child: Container(
                        height: height * 0.03,
                        width: width * 0.05,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 84, 195, 243),
                                Color.fromARGB(255, 2, 81, 172),
                              ]),
                          borderRadius: BorderRadius.circular(180),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 165,
                      left: 8,
                      child: CircleAvatar(
                          backgroundColor: Color.fromARGB(87, 209, 242, 248),
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Color.fromARGB(197, 255, 255, 255),
                          )),
                    ),
                    const Positioned(
                      top: 165,
                      left: 360,
                      child: CircleAvatar(
                          backgroundColor: Color.fromARGB(87, 209, 242, 248),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color.fromARGB(197, 255, 255, 255),
                          )),
                    ),
                    Positioned(
                      left: 90,
                      child: Container(
                          child: Image.asset(
                        "images/shos4.png",
                        height: height * 0.50,
                        width: width * 0.55,
                      )),
                    ),
                  ]),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text("Nike Adapt BB 2.0 Black",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Build for Natural Motion The Nike Flex Shoes",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 238, 218, 41),
                        size: 20,
                      ),
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 238, 218, 41),
                        size: 20,
                      ),
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 238, 218, 41),
                        size: 20,
                      ),
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 238, 218, 41),
                        size: 20,
                      ),
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 238, 218, 41),
                        size: 20,
                      ),
                      const Text(
                        " 5.0 ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
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
                  height: height * 0.030,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Shoe Size ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: height * 0.040,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
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
                  height: height * 0.050,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        const Text(
                          "Colors Available :  ",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.green,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.red,
                        )
                      ],
                    ))
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
