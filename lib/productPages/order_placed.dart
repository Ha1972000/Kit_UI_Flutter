import 'package:flutter/material.dart';
import 'package:ui_kit/settings/settings.dart';

class Order_Placed extends StatelessWidget {
  const Order_Placed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Container(
                decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                height: 400,
                child: Image.asset("assets/img3.png")),
            Padding(
              padding: const EdgeInsets.only(top: 370),
              child: Column(
                children: [
                Center(
                  child: Container(height: 310,width: 430,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Order Placed \nSuccessfully",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                      ),
                      Text(
                        "You will recieve an email confirmation",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: SizedBox(
                          width: 320,
                          height: 50,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Color(0xFF9747FF)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  )),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Settings()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Text(
                                    'See Order details',
                                    style: TextStyle(fontSize: 17, color: Colors.white,fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
              ),
                ),
            ]),
              )],
        ),
      ]),
    );
  }
}
