import 'package:flutter/material.dart';
import 'package:ui_kit/search/search_result2.dart';
class Search_Result extends StatelessWidget {
  const Search_Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 15),
              child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        minRadius: 20,

                        backgroundColor: Color(0xFFF5F5F5),

                        child: Image.asset(

                            "assets/pop.png"
                        ),),
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
                  ] ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Center(
                child: Column(
                  children: [
                    Image.asset("assets/search.png"),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Search2()),
                          );                        },
                        child: Text(
                          "Sorry, we couldn't find any\n matching result for your \nSearch.",
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
                                builder: (context) => Search2()),
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
            )
          ],
        ),
      ),
    );
  }
}
