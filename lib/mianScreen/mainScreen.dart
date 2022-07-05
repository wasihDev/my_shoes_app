import 'package:flutter/material.dart';
import 'package:shoesapp/mianScreen/buttonList.dart';
import 'package:shoesapp/mianScreen/explorScreen.dart';
import 'package:shoesapp/mianScreen/explore_screenList.dart';
import 'package:shoesapp/mianScreen/shoesListView.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selected = 1;

  // ignore: non_constant_identifier_names
  Widget CustomButton(String text, int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: FlatButton(
          hoverColor: Colors.amberAccent,
          splashColor: Colors.blueAccent,
          height: 48,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: (selected == index)
              ? Colors.black
              : const Color.fromARGB(255, 235, 235, 235),
          onPressed: () {
            setState(() {
              selected = index;
            });
          },
          child: Text(text,
              style: TextStyle(
                  color: (selected == index) ? Colors.white : Colors.grey))),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Bar Work
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            "images/pic.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Montha Alex",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: width * 0.35,
                      ),
                      const Icon(
                        Icons.notifications_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * 0.05),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Stack(clipBehavior: Clip.none, children: [
                      Container(
                        clipBehavior: Clip.none,
                        height: height * 0.25,
                        width: width * 1.0,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [Color(0xff00b2ff), Color(0xff051D29)]),
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        left: 25,
                        child: Text("Make Foot Awesome",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22)),
                      ),
                      const Positioned(
                        top: 48,
                        left: 25,
                        child: Text("With Nice Air",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22)),
                      ),
                      Positioned(
                        top: 100,
                        left: 25,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Container(
                            height: 50,
                            width: 150,
                            color: const Color.fromARGB(255, 33, 185, 250),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              const ExploreData())));
                                  // write what ever your want to write on tap
                                },
                                child: const Text("Explore Nike",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 155,
                          child: Image.asset(
                            "images/mainImage.png",
                            height: height * 0.25,
                            width: width * 0.6,
                          ))
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text("Popular Brands",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22)),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Row(
                      children: [
                        CustomButton("All", 1),
                        CustomButton("Nike", 2),
                        CustomButton("Puma", 3),
                        CustomButton("Nike", 4),
                        CustomButton("Adidas", 5),
                        CustomButton("Adidas", 6),
                        CustomButton("Adidas", 7),
                        CustomButton("Adidas", 8),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      MyShoesList(
                          image: "images/pic1.png",
                          title: "Nike Adapt BB",
                          price: "\$250"),
                      MyShoesList(
                          image: "images/pic2.png",
                          title: "Nike Adapt BB",
                          price: "\$180"),
                      MyShoesList(
                          image: "images/pic4.png",
                          title: "Nike Carbon Solar",
                          price: "\$150"),
                      MyShoesList(
                          image: "images/pic5.png",
                          title: "Nike Air Max",
                          price: "\$350"),
                      MyShoesList(
                          image: "images/pic1.png",
                          title: "Nike Mox Carbon",
                          price: "\$200")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
