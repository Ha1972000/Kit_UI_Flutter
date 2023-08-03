import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_kit/productPages/emty.dart';
import 'package:ui_kit/productPages/product2.dart';
import 'package:ui_kit/settings/settings.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    int _value = 1;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  SizedBox(
                    width: 400,
                    height: 350,
                    child: Image.asset(
                      "assets/six.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            minRadius: 20,
                            backgroundColor: const Color(0xFFF5F5F5),
                            child: Image.asset("assets/pop.png"),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            minRadius: 20,
                            backgroundColor: const Color(0xFFF5F5F5),
                            child: Image.asset("assets/heart.png"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 230, top: 15, bottom: 10),
              child: Text("Mohair Blouse",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
            ),
            Column(
              children: [
                SizedBox(
                  width: 350,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Size"),
                        ),
                        DropdownButton(
                            alignment: Alignment.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black),
                            borderRadius: BorderRadius.circular(30),
                            value: _value,
                            items: [
                              const DropdownMenuItem(
                                child: Text("S"),
                                value: 1,
                              ),
                              const DropdownMenuItem(
                                child: Text("Second Item"),
                                value: 5,
                              ),
                              const DropdownMenuItem(
                                child: Text("Second Item"),
                                value: 5,
                              ),
                              const DropdownMenuItem(
                                child: Text("Second Item"),
                                value: 5,
                              )
                            ],
                            onChanged: (Align) {
                              setState(() {
                                _value = 5;
                              });
                            },
                            hint: const Text("Select item")),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: SizedBox(
                    width: 350,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Color"),
                            DropdownButton(
                                alignment: Alignment.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black),
                                borderRadius: BorderRadius.circular(30),
                                value: _value,
                                items: [
                                  const DropdownMenuItem(
                                    child: Text("S"),
                                    value: 1,
                                  ),
                                  const DropdownMenuItem(
                                    child: Text("Second Item"),
                                    value: 5,
                                  ),
                                  const DropdownMenuItem(
                                    child: Text("Second Item"),
                                    value: 5,
                                  ),
                                  const DropdownMenuItem(
                                    child: Text("Second Item"),
                                    value: 5,
                                  )
                                ],
                                onChanged: (Align) {
                                  setState(() {
                                    _value = 5;
                                  });
                                },
                                hint: const Text("Select item")),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Quantity"),
                        ),
                        DropdownButton(
                            alignment: Alignment.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black),
                            borderRadius: BorderRadius.circular(30),
                            value: _value,
                            items: [
                              const DropdownMenuItem(
                                child: Text("S"),
                                value: 1,
                              ),
                              const DropdownMenuItem(
                                child: Text("Second Item"),
                                value: 5,
                              ),
                              const DropdownMenuItem(
                                child: Text("Second Item"),
                                value: 5,
                              ),
                              const DropdownMenuItem(
                                child: Text("Second Item"),
                                value: 5,
                              )
                            ],
                            onChanged: (Align) {
                              setState(() {
                                _value = 5;
                              });
                            },
                            hint: const Text("Select item")),
                      ],
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 10, left: 30),
                  child: Text(
                      "Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories, from the everyday wardrobe to special occasions, the House's beloved motifs embellish the latest leathergoods. Here a briefcase appears in jumbo GG taupe leather as part of the new luggage line.",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5, right: 200),
                  child: Text("Shipping & Returns",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5, right: 10),
                  child: Text("Free standard shipping and free 60-day returns",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 17)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 10, right: 290),
                  child: Text("Reviews",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
                ),
                const Padding(
                  padding: EdgeInsets.only( right: 260),
                  child: Text("4.5 Ratings",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10, right: 270),
                  child: Text("213 Review",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),
                ),
                Column(
                  children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/rv1.png"),
                    const Text("Thai Nguyen", style:
                    TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                                itemSize: 25,
                                itemBuilder: (context, _) =>
                                    const Icon(Icons.star),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                }),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),                          const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories."),
                )

                  ]),
                Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/rv2.png"),
                          const Text("Alex Nguyen", style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                                      itemSize: 25,
                                      itemBuilder: (context, _) =>
                                          const Icon(Icons.star),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      }),
                                ),
                              ],
                            ),

                          ),
                        ],
                      ),                          const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text("Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories."),
                      )

                    ]),
          ],
        ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                width: 350,
                height: 50,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF9747FF)),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Emty()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '14B',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      const Text(
                        'Add to Bag',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
      ])),
    );
  }
}
