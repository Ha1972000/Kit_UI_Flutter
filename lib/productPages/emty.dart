import 'package:flutter/material.dart';
import 'package:ui_kit/productPages/cart_light.dart';
import 'package:ui_kit/settings/settings.dart';
class Emty extends StatelessWidget {
  const Emty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFF5F5F5),

      body: Container(
        child: Column(
          children: [
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
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: Column(
                  children: [
                    Image.asset("assets/gio.png"),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Settings()),
                          );                        },
                        child: Text(
                          "Your Cart is Empty",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      height: 50,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Color(0xFF9747FF)),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cart()),
                          );
                        },
                        child: Text(
                          'Explore Categories',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
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
