import 'package:flutter/material.dart';
import 'package:shoesapp/mianScreen/mainScreen.dart';
import 'package:shoesapp/onboarding/page1.dart';
import 'package:shoesapp/onboarding/page2.dart';
import 'package:shoesapp/onboarding/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingScreen extends StatefulWidget {
  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  final _controller = PageController();
  bool onLastPage = false;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Positioned(
                    child: Container(
                        margin: const EdgeInsets.only(top: 30),
                        height: height * 0.4,
                        child: RotationTransition(
                          turns: const AlwaysStoppedAnimation(-16 / 360),
                          child: Image.asset(
                            "images/mainImage.png",
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                ]),
                Container(
                    height: height * 0.3,
                    child: PageView(
                        onPageChanged: (index) {
                          setState(() {
                            onLastPage = (index == 2);
                          });
                        },
                        controller: _controller,
                        children: const [
                          Page1(),
                          Page2(),
                          Page3(),
                        ])),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.black,
                      dotColor: Color.fromARGB(248, 104, 104, 104)),
                ),
                SizedBox(height: height * 0.08),
                Row(
                  children: [
                    RaisedButton(
                      highlightElevation: 7,
                      highlightColor: Colors.amberAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      onPressed: () => _controller.jumpToPage(2),
                      color: Colors.black,
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Color.fromARGB(255, 238, 238, 238)),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.4,
                    ),
                    onLastPage
                        ? FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            height: 60,
                            color: const Color(0xff00b2ff),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => MainScreen())));
                            },
                            child: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color.fromARGB(255, 238, 238, 238),
                            ))
                        : FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            height: 60,
                            color: const Color(0xff00b2ff),
                            onPressed: () => _controller.nextPage(
                                duration: const Duration(milliseconds: 600),
                                curve: Curves.easeIn),
                            child: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color.fromARGB(255, 238, 238, 238),
                            ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
