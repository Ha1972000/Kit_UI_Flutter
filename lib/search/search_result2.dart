import 'package:flutter/material.dart';
import 'package:ui_kit/productPages/product_page.dart';

class Search2 extends StatefulWidget {
  const Search2({Key? key}) : super(key: key);

  @override
  State<Search2> createState() => _Search2State();
}

class _Search2State extends State<Search2> {
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
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        style: TextStyle(color: Colors.green),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Search..',
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: const Icon(Icons.mic),
                        ),
                      ),
                    ),
                  ),
                ]),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            width: 40,
                            height: 20,
                            child: const Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          width: 80,
                          height: 40,
                          child: const Center(
                            child: Text(
                              "On Sole",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF9747FF),
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 90,
                              height: 25,
                              child: DropdownButton(
                                  alignment: Alignment.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.amberAccent),
                                  borderRadius: BorderRadius.circular(30),
                                  value: _value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("Sort by"),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Second "),
                                      value: 5,
                                    ),
                                  ],
                                  onChanged: (Align) {
                                    setState(() {
                                      _value = 3;
                                    });
                                  },
                                  hint: Text("Select ")),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF9747FF),
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 90,
                              height: 25,
                              child: DropdownButton(
                                  alignment: Alignment.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.amberAccent),
                                  borderRadius: BorderRadius.circular(30),
                                  value: _value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("Women"),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Second "),
                                      value: 5,
                                    ),
                                  ],
                                  onChanged: (Align) {
                                    setState(() {
                                      _value = 3;
                                    });
                                  },
                                  hint: Text("Select ")),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 240),
                child: Text(
                  "53 Result Found",
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
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Product()),
                                      );
                                    },
                                    child: Text(
                                      "24.55",
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
            ]
                )
            ))
    );
  }
}
