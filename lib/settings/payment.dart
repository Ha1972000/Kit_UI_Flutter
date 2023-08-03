import 'package:flutter/material.dart';
import 'package:ui_kit/productPages/order_placed.dart';
import 'package:ui_kit/settings/add_card.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
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
                padding: const EdgeInsets.only(right: 280),
                child: Text(
                  "Payment",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: Text(
                  "Cards",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text("Payment Method"),
                      ),
                      Image.asset("assets/atm.png"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "***4187",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ),
                          InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => AddCard()),
                                );
                              },
                              child: Icon(Icons.navigate_next)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Text("Payment Method"),
                    ),
                    Image.asset("assets/atm.png"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "***4187",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ),
                        Icon(Icons.navigate_next),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280, top: 15, bottom: 15),
                child: Text(
                  "Paypal",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "htt@gmail.com",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 18),
                        ),
                        Icon(Icons.navigate_next),
                      ],
                    )
                  ],
                ),
              ),
            ])));
  }
}
