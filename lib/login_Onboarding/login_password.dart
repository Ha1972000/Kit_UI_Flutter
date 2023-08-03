import 'package:flutter/material.dart';
import 'package:ui_kit/login_Onboarding/password_reset.dart';
class Login_Pass extends StatelessWidget {
  const Login_Pass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            children: [
        Padding(
        padding: const EdgeInsets.only(right: 230, top: 90, bottom: 15),
        child: Text(
          "Sign in",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: Colors.black),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SizedBox(
          height: 50,
          width: 350,
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                labelText: 'Password'),
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
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
                  MaterialPageRoute(builder: (context) => Pass_One()),
                );
              },
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            Text(
              "Reset",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),]))
    );
  }
}
