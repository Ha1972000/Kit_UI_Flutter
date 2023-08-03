import 'package:flutter/material.dart';
import 'package:ui_kit/productPages/order_placed.dart';

class Check2 extends StatelessWidget {
  const Check2({Key? key}) : super(key: key);

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
                child: Text(
                  "Checkout",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
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
                          Text("2715 Ash Dr. San Jose, South Dakota...",  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                          Icon(Icons.navigate_next),
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

                    ),Image.asset("assets/atm.png"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("***4187",  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                        ),
                        Icon(Icons.navigate_next),
                      ],
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 100),child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal"),
                        Text("110"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping Cost"),
                        Text("110"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tax"),
                        Text("110"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal",style: TextStyle(fontSize: 14),),
                        Text("110",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                      ],
                    ),
                  ),
                ],
              ),),
              Padding(
                padding: const EdgeInsets.only(top: 150),
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
                        MaterialPageRoute(builder: (context) => Order_Placed()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '118',
                          style: TextStyle(fontSize: 17, color: Colors.white,fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Place Order',
                          style: TextStyle(fontSize: 17, color: Colors.white,fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ])));
  }
}
