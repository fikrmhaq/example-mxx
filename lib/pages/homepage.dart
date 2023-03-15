import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80.0,
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.white)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/mxxlogo.png',
                        height: 50,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              height: MediaQuery.of(context).size.height / 2,
              child: Stack(
                children: [
                  Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.red)),
                    child: Image.asset('assets/ellipse.png'),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: double.maxFinite,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white)),
                            child: Container(
                              child: Image.asset(
                                'assets/coffeecream.png',
                                width: 250,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
