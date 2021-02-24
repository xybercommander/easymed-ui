import 'package:easymed/views/SignInPages/signup.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 144, bottom: 64),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splashscreenbg.jpeg'),
            fit: BoxFit.cover
          )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Hero(
              tag: 'easymedlogo',
              child: Image.asset('assets/images/easymedlogo.png', width: 250, height: 250,)
            ),
            GestureDetector(
              onTap: () => Navigator.push(context, PageTransition(
                child: SignUp(),
                type: PageTransitionType.fade
              )),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 56),
                height: 56,              
                decoration: BoxDecoration(
                  color: Color.fromRGBO(252, 92, 101, 1),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Center(
                  child: Text(
                    'Get Started', 
                    style: TextStyle(
                      fontFamily: 'Poppins', 
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}