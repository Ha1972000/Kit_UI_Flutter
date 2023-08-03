import 'package:flutter/material.dart';
import 'package:ui_kit/login_Onboarding/onboarding.dart';
class Pass_Two extends StatelessWidget {
  const Pass_Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/mess.png"),
            Text("We Sent you an Email to reset ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
            Text("your password",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
            Padding(
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
                      MaterialPageRoute(builder: (context) => Onboarding(title: '',)),
                    );
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
