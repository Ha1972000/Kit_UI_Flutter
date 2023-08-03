import 'package:flutter/material.dart';
import 'package:ui_kit/homePage_light/home_page.dart';
import 'package:getwidget/getwidget.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int groupValue = 0;

// List<String> items=<String>[
//   "Linh"
//       "Hà"
//       "Lan Anh"
//       "Loan"
// ];
  String selec = "18-20";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 90, bottom: 15),
                child: Text(
                  "Tell us About yourself",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150, top: 25, bottom: 15),
                child: Text(
                  "Who do you shop for?",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
              GFCard(
                  color: Color(0xFFF5F5F5),
                  borderOnForeground: false,
                  boxFit: BoxFit.cover,
                  titlePosition: GFPosition.end,
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GFRadio(
                        type: GFRadioType.custom,
                        activeIcon: Center(child: Text("Nam")),
                        inactiveIcon: Center(child: Text("Nam")),
                        radioColor: Colors.red,
                        size: 65,
                        activeBgColor: Colors.green,
                        activeBorderColor: Colors.green,
                        value: 1,
                        groupValue: groupValue,
                        onChanged: (value) {
                          setState(() {
                            groupValue = value;
                          });
                        },
                      ),
                      GFRadio(
                        type: GFRadioType.custom,
                        inactiveIcon: Center(child: Text("Nữ")),
                        activeIcon: Center(child: Text("Nữ")),
                        size: 65,
                        value: 2,
                        groupValue: groupValue,
                        onChanged: (value) {
                          setState(() {
                            groupValue = value;
                          });
                        },
                        activeBgColor: Colors.green,
                        activeBorderColor: Colors.green,
                      ),
                    ],
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 180),
                    child: Text(
                      "How Old are you?",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 160),
                    child: Container(
                      width: 330,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton<String>(
                          value: selec,
                          iconEnabledColor: Colors.white,
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 230),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                          ),
                          iconSize: 35,
                          items: [
                            DropdownMenuItem(
                              child: Text("18-20"),
                              value: '18-20',
                            ),
                            DropdownMenuItem(
                              child: Text("20-25"),
                              value: 'b',
                            ),
                            DropdownMenuItem(
                              child: Text("25-30"),
                              value: 'c',
                            )
                          ],
                          onChanged: (value) {
                            setState(() {
                              selec = value!;
                              print(selec);
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    height: 50,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF9747FF)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Onboarding()),
                        // );
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text(
                          'Fisnish',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ])));
  }
}
// mixin _site {
// }
