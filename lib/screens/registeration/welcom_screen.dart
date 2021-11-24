import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';
import 'package:food_delivery_app/screens/home_page.dart';

import 'login_screen.dart';
import 'sign_in_screen.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome ! ',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(height: 30,),
                Text('Any Where and any time',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.grey, fontWeight: FontWeight.w600, height: 1.2),
                ),
                Text('with you ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.grey, fontWeight: FontWeight.w600, height: 1.2),
                ),
                SizedBox(height: 50,),
                buttonsMainCategory(
                  function: ()
                  {
                    helpNavigateTo(context, SignInScreen());
                  },
                  height: 50,
                  color: defaultColor,
                  text: 'Sign In',
                  fontSize: 20,
                  colorText: Colors.white,
                ),

                buttonsMainCategory(
                  function: ()
                  {
                    helpNavigateTo(context, LoginScreen());
                  },
                  height: 50,
                  color: defaultColor,
                  text: 'Sign up ',
                  fontSize: 20,
                  colorText: Colors.white,
                ),
                buttonsMainCategory(
                  function: ()
                  {
                    helpNavigateTo(context, HomePage());
                  },
                  height: 50,
                  color: defaultColor,
                  text: 'Continue without login',
                  fontSize: 20,
                  colorText: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
