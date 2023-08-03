import 'package:flutter/material.dart';
import 'package:ui_kit/productPages/product_page.dart';

class Wishlist2 extends StatefulWidget {
  const Wishlist2({Key? key}) : super(key: key);

  @override
  State<Wishlist2> createState() => _Wishlist2State();
}

class _Wishlist2State extends State<Wishlist2> {
  final List<String> _list = <String>[
    "assets/ts6.png",
    "assets/ts2.png",
    "assets/ts3.png",
    "assets/ts4.png",
    "assets/ts5.png",
    "assets/ts1.png",
  ];

  @override
  Widget build(BuildContext context) {
    int _value = 1;

    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Color(0xFFF5F5F5),
            body: Container(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Row(children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      minRadius: 20,
                      backgroundColor: Color(0xFFF5F5F5),
                      child: Image.asset("assets/pop.png"),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 240, bottom: 20),
                child: Text(
                  "My Favorite(12)",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 15,
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  childAspectRatio: 50 / 60,
                  children: _list
                      .map((item) => Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15)),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          topLeft: Radius.circular(15)),
                                      image: DecorationImage(
                                        image: AssetImage(item),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 31, 0, 18),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Product()),
                                      );
                                    },
                                    child: Text(
                                      "Embroidered flowers shirt\n24.55",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.purpleAccent),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              )
            ]))));
  }
}
