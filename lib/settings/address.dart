import 'package:flutter/material.dart';
import 'package:ui_kit/productPages/order_placed.dart';
import 'package:ui_kit/settings/add_address.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(right: 250),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Address()),
                    );
                  },
                  child: Text(
                    "Address",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                  ),
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
                        padding: const EdgeInsets.only(right: 250),
                        child: Text("Sipping Adress"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Add Sipping Adress",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Address2()),
                              );
                            },
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15,color: Colors.deepPurpleAccent),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
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
                        padding: const EdgeInsets.only(right: 250),
                        child: Text("Sipping Adress"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Add Sipping Adress",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          Text(
                            "Edit",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15,color: Colors.deepPurpleAccent),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
                ]),
        ));
                }
}
