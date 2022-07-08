import 'package:flutter/material.dart';
import 'package:shoesapp/mianScreen/explore_screenList.dart';

class ExploreData extends StatelessWidget {
  const ExploreData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        foregroundColor: const Color.fromARGB(255, 170, 170, 170),
        centerTitle: true,
        title: const Text("Explore",
            style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: Color.fromARGB(255, 170, 170, 170),
            ),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ExploreNike(
                image: 'images/pic4.png',
                price: '80.00',
                title: 'Nike Carbon Solar',
              ),
              SizedBox(
                height: 25,
              ),
              ExploreNike(
                image: 'images/pic1.png',
                price: '100.00',
                title: 'Nike Joyride',
              ),
              SizedBox(
                height: 25,
              ),
              ExploreNike(
                image: 'images/pic2.png',
                price: '180.00',
                title: 'Nike Air Max',
              ),
              SizedBox(
                height: 25,
              ),
              ExploreNike(
                image: 'images/shoes12.png',
                price: '150.00',
                title: 'Nike Carbon Solar',
              ),
              SizedBox(
                height: 25,
              ),
              ExploreNike(
                image: 'images/pic9.png',
                price: '200.00',
                title: 'Nike Mox Carbon',
              ),
              SizedBox(
                height: 25,
              ),
              ExploreNike(
                image: 'images/pic8.png',
                price: '350.00',
                title: 'Nike Jumbo Solar',
              ),
              SizedBox(
                height: 18,
              ),
              ExploreNike(
                image: 'images/pic10.png',
                price: '100.00',
                title: 'Nike Special Maxo',
              )
            ],
          ),
        ),
      ),
    );
  }
}
