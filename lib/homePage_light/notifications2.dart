import 'package:flutter/material.dart';

class Notifications2 extends StatelessWidget {
  const Notifications2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, right: 150),
          child: Text(
            "Notifications",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: 400.0,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: new BorderRadius.circular(13.0),
                        child: const Image(
                          image: AssetImage(
                            "assets/ragg.png",
                          ),
                          width: 50.0,
                          height: 50.0,
                        ), // Padding(
                        //   padding: const EdgeInsets.only(to),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Jasmine, you placed and order check your \n order history for full details",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: new BorderRadius.circular(13.0),
                          child: const Image(
                            image: AssetImage(
                              "assets/ragg.png",
                            ),
                            width: 50.0,
                            height: 50.0,
                          ), // Padding(
                          //   padding: const EdgeInsets.only(to),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Jasmine, Thank you for shopping with \n us we have canceled order #24568.",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: new BorderRadius.circular(13.0),
                          child: const Image(
                            image: AssetImage(
                              "assets/ragg.png",
                            ),
                            width: 50.0,
                            height: 50.0,
                          ), // Padding(
                          //   padding: const EdgeInsets.only(to),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Jasmine, your Order #24568 has been \n confirmed check your order history for ...",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF9747FF),
                offset: Offset(
                  1.0,
                  1.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/home.png",
            ),
            Image.asset(
              "assets/rang.png",
            ),
            Image.asset(
              "assets/list.png",
            ),
            Image.asset(
              "assets/person.png",
            ),
          ],
        ),
      ),
    );
  }
}
