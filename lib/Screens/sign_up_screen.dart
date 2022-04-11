import 'package:curso2/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Image.asset(
                'assets/images/apple.png',
                width: 130.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Center(
              child: Text(
                "COOL MUSIC",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white
                  ),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen ()
                        )
                    );
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  )
              ),
            ),
            const SizedBox(height: 20.0),
            const Center(
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
