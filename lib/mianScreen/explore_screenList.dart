// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: Slidable(
      startActionPane:
          ActionPane(motion: const ScrollMotion(), extentRatio: 0.15,
              // A pane can dismiss the Slidable.
              // All actions are defined in the children parameter.
              children: [
            Expanded(
              child: Card(
                color: Colors.black,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Container(
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
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
      child: Container(
          height: height * 0.16,
          child: Stack(children: [
            Positioned(
                top: 4,
                left: 20,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: height * 0.14,
                      width: width * 0.30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage(image), fit: BoxFit.fill),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 175, 29, 219),
                              Color.fromARGB(255, 5, 149, 221)
                            ]),
                      ),
                    ))),
            Positioned(
                left: 150,
                top: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Text(
                          "\$$price",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 151, 151, 151)),
                        ),
                        const SizedBox(width: 12),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        RaisedButton(
                          splashColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          onPressed: () {},
                          // ignore: sort_child_properties_last
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.black,
                        ),
                        const SizedBox(width: 10),
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
