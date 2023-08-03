import 'package:flutter/material.dart';

class Track extends StatelessWidget {
  const Track({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(5),
      child: Column(children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 340),
            child: CircleAvatar(
              minRadius: 20,
              backgroundColor: Color(0xFFF5F5F5),
              child: Image.asset("assets/pop.png"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 180,
          ),
          child: Text(
            "Order #456789",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: 260.0,
          child: ListView(scrollDirection: Axis.vertical, children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 50,
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
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 15, bottom: 5),
                      child: Text(
                        "Delivered",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Track()),
                            );
                          },
                          child: Text(
                            "28 May",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ))
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
                height: 50,
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
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 15, bottom: 5),
                        child: Text(
                          "Shipped",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: Text(
                          "28 May",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
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
                height: 50,
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
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 15, bottom: 5),
                      child: Text(
                        "Order Confirmed",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Text(
                        "28 May",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
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
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 15, bottom: 5),
                        child: Text(
                          "Order Placed",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 135),
                        child: Text(
                          "28 May",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.,
        // )
        Padding(
          padding: const EdgeInsets.only(right: 250, top: 5, bottom: 10),
          child: Text(
            "Order items",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 15, bottom: 5),
                        child: Text(
                          "4 items",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 210),
                        child: Text(
                          "View All",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.purpleAccent,
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
        Padding(
          padding: const EdgeInsets.only(right: 200, top: 15, bottom: 15),
          child: Text(
            "Shipping details",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            height: 70,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, bottom: 5),
                child: Text(
                  "2715 Ash Dr. San Jose, South Dakota 83475 \n 121-224-7890",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    ));
  }
}
