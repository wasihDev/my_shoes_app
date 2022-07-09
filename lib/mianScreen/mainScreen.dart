import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesapp/mianScreen/explorScreen.dart';
import 'package:shoesapp/mianScreen/shoesListView.dart';
import 'package:shoesapp/transition.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Top Bar Work
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ShakeTransition(
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            "images/pic.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ShakeTransition(
                      child: Column(
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
                    ),
                    SizedBox(
                      width: width * 0.35,
                    ),
                    const ShakeTransition(
                      left: false,
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.05),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ShakeTransition(
                    child: Stack(clipBehavior: Clip.none, children: [
                      Container(
                        clipBehavior: Clip.none,
                        height: height * 0.25,
                        width: width * 0.91,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15,
                              color: Color.fromARGB(255, 151, 151, 151),
                              blurStyle: BlurStyle.outer,
                            )
                          ],
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color.fromARGB(255, 175, 29, 219),
                                Color.fromARGB(255, 5, 149, 221)
                              ]),
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
                      // Explore Button
                      Positioned(
                        top: 90.h,
                        left: 25.w,
                        child: SizedBox(
                          height: 45.h,
                          child: RaisedButton(
                            elevation: 4,
                            splashColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            color: const Color.fromARGB(255, 33, 185, 250),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const ExploreData())));
                            },
                            child: Row(
                              children: [
                                const Text("Explore Nike",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18)),
                                SizedBox(width: 10.w),
                                Image.asset("images/nike_logo.png")
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 175.w,
                          child: Image.asset(
                            "images/mainImage.png",
                            height: height * 0.25,
                            width: width * 0.6,
                          ))
                    ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const ShakeTransition(
                child: Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text("Popular Brands",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22)),
                ),
              ),
              const SizedBox(height: 20),

              //       TabBar Buttons

              ShakeTransition(
                left: false,
                child: TabBar(
                    indicatorWeight: 0,
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelColor:
                        const Color.fromARGB(255, 173, 173, 173),
                    indicator: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 15,
                            color: Color.fromARGB(255, 151, 151, 151),
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    controller: tabController,
                    tabs: [
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 196, 196, 196),
                                  width: 1)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text('All'),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 196, 196, 196),
                                  width: 1)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text('Nike'),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 196, 196, 196),
                                  width: 1)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text('Adidas'),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 196, 196, 196),
                                  width: 1)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text('Boomy'),
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                width: double.maxFinite,
                height: height * 1.95,
                child: TabBarView(controller: tabController, children: [
                  Column(
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
                          image: "images/pic10.png",
                          title: "Nike Mox Carbon",
                          price: "\$200"),
                      MyShoesList(
                          image: "images/shoes12.png",
                          title: "Nike Mox Carbon",
                          price: "\$200")
                    ],
                  ),
                  Column(
                    children: [
                      MyShoesList(
                          image: "images/pic2.png",
                          title: "Nike Adapt BB",
                          price: "\$250"),
                      MyShoesList(
                          image: "images/pic8.png",
                          title: "Nike Adapt BB",
                          price: "\$180"),
                      MyShoesList(
                          image: "images/pic7.png",
                          title: "Nike Carbon Solar",
                          price: "\$150"),
                      MyShoesList(
                          image: "images/pic3.png",
                          title: "Nike Air Max",
                          price: "\$350"),
                      MyShoesList(
                          image: "images/pic4.png",
                          title: "Nike Mox Carbon",
                          price: "\$200")
                    ],
                  ),
                  const Text('Nothing here Sorry'),
                  Column(
                    children: [
                      MyShoesList(
                          image: "images/shoes13.png",
                          title: "Nike Adapt BB",
                          price: "\$250"),
                      MyShoesList(
                          image: "images/shoes12.png",
                          title: "Nike Adapt BB",
                          price: "\$180"),
                      MyShoesList(
                          image: "images/pic10.png",
                          title: "Nike Carbon Solar",
                          price: "\$150"),
                      MyShoesList(
                          image: "images/pic3.png",
                          title: "Nike Air Max",
                          price: "\$350"),
                      MyShoesList(
                          image: "images/pic4.png",
                          title: "Nike Mox Carbon",
                          price: "\$200")
                    ],
                  ),
                ]),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Explore Brands",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Stack(children: [
                        Container(
                            height: height * 0.4,
                            width: width * 0.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Color.fromARGB(255, 175, 29, 219),
                                      Color.fromARGB(255, 5, 149, 221)
                                    ])),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 12, left: 12.0),
                              child: Text("Make Foot Beautiful with Nice Footy",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 26)),
                            )),
                        const SizedBox(height: 5),
                        Positioned(
                            child: Image.asset(
                          "images/pic2.png",
                          height: height * 0.5,
                          width: width * 0.5,
                        ))
                      ]),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
