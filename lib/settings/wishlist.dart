import 'package:flutter/material.dart';
import 'package:ui_kit/homePage_light/track_order.dart';
import 'package:ui_kit/settings/wishlist2.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

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
                "Wíhlist",
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
                                "assets/tym.png",
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
                                  "My Favorite",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                "12 Products",
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
                                        builder: (context) => Wishlist2()),
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
                                  "assets/tym.png",
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
                                    "T-Shits",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "4 Products",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 171),
                              child: Icon(Icons.navigate_next,size: 30),

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

        ));
  }
}
