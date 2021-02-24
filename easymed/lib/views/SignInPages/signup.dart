import 'package:easymed/widgets/sign_in_widgets.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 48, bottom: 30),
        child: Column(          
          children: [
            Hero(
              tag: 'easymedlogo',
              child: Image.asset('assets/images/easymedlogo.png', width: 250, height: 250,)
            ),
            Container(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  authTextFields('Enter your full name', 'nameIcon.png'),
                  authTextFields('Enter your email', 'emailIcon.png'),
                  authTextFields('Enter password', 'unlockIcon.png'),
                  authTextFields('Confirm password', 'lockIcon.png'),
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 56),
              height: 56,              
              decoration: BoxDecoration(
                color: Color.fromRGBO(252, 92, 101, 1),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Center(
                child: Text(
                  'Register', 
                  style: TextStyle(
                    fontFamily: 'Poppins', 
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Container(              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account ? ',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.tealAccent[700]
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}