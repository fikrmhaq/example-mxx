import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ns/pages/minumanpt1.dart';

class Minumanpt2 extends StatefulWidget {
  const Minumanpt2({super.key});
  @override
  State<StatefulWidget> createState() => _SMinumanpt2();
}

class _SMinumanpt2 extends State<Minumanpt2> {
  // const _SMinumanpt2({super.key});
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

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
              child: Column(
                children: [
                  Image.asset(
                    'assets/mxxlogo.png',
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'MINUMAN MAXX COFFEE TEMBAGAPURA',
                      style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 470,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      // height: 400.0,

                      child: Column(children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Image.asset(
                                  'assets/americanomenu.png',
                                  height: 135,
                                ),
                              ),
                              Flexible(
                                  child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hot/Iced',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 10.0,
                                          color: Colors.grey),
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(
                                      'AMERICANO',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 6.0),
                                      child: Text(
                                        'A European approach to an American style coffe, combining the perfect espresso with steaming hot water. Also available with ice.',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 8.5),
                                      ),
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Image.asset(
                                  'assets/cookiesandcreamfrappe.png',
                                  height: 124,
                                ),
                              ),
                              Flexible(
                                  child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hot/Iced',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 10.0,
                                          color: Colors.grey),
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(
                                      'COOKIES & CREAM FRAPPE',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 6.0),
                                      child: Text(
                                        'One of Maxx Coffee’s signature. A blend of vanilla, milk and cookies, topped with whipped cream',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 8.5),
                                      ),
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Image.asset(
                                  'assets/americanomenu.png',
                                  height: 135,
                                ),
                              ),
                              Flexible(
                                  child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hot/Iced',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 10.0,
                                          color: Colors.grey),
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(
                                      'AMERICANO',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 6.0),
                                      child: Text(
                                        'A European approach to an American style coffe, combining the perfect espresso with steaming hot water. Also available with ice.',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 8.5),
                                      ),
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                      ]),
                    );
                  },
                );
              }).toList(),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 12,
              child: Center(
                  child: TextButton(
                onPressed: () => _controller.nextPage(),
                child: Text(
                  'NEXT PAGE >',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 11.5),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
