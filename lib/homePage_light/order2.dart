import 'package:flutter/material.dart';
import 'package:ui_kit/homePage_light/track_order.dart';

class Order2 extends StatelessWidget {
  const Order2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Color(0xFFF5F5F5),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 300),
              child: Text(
                "Orders",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: TabBar(
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                      color: const Color(0xFF9747FF),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    isScrollable: true,
                    tabs: [
                      Container(
                        width: 120,
                        height: 35,
                        child: const Center(
                          child: Text(
                            "Processing",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 35,
                        child: const Center(
                          child: Text(
                            "Shipped",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 35,
                        child: const Center(
                          child: Text(
                            "Delivered",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 35,
                        child: const Center(
                          child: Text(
                            "Return",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 35,
                        child: const Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ]),
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
                                "assets/listt.png",
                              ),
                              width: 50.0,
                              height: 50.0,
                            ), // Padding(
                            //   padding: const EdgeInsets.only(to),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, left: 15, bottom: 5),
                                child: Text(
                                  "Order #456765",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                "4 items",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150),
                            child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Track()),
                                  );
                                },
                                child: Icon(Icons.navigate_next,size: 30)),

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
                                  "assets/listt.png",
                                ),
                                width: 50.0,
                                height: 50.0,
                              ), // Padding(
                              //   padding: const EdgeInsets.only(to),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, bottom: 5),
                                  child: Text(
                                    "Order #456765",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  "2 items",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Icon(Icons.navigate_next,size: 30),

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
                        child: Row(children: [
                          ClipRRect(
                            borderRadius: new BorderRadius.circular(13.0),
                            child: const Image(
                              image: AssetImage(
                                "assets/listt.png",
                              ),
                              width: 50.0,
                              height: 50.0,
                            ), // Padding(
                            //   padding: const EdgeInsets.only(to),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, left: 15, bottom: 5),
                                child: Text(
                                  "Order #456765",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                "1 items",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150),
                            child: Icon(Icons.navigate_next,size: 30),

                          )
                        ]),
                      ),
                    ),
                  )
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
        ));
  }
}
