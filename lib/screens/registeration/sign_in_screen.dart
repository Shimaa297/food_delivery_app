import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';
import 'package:food_delivery_app/screens/home_page.dart';

import 'login_screen.dart';
import 'verification_screen.dart';

class SignInScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: ()
                {
                  helpNavigateTo(context, HomePage());
                },
                child: Text('SKIP',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(color: defaultColor),
              )
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Welcome Back',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(height: 20,),
                  Text('Any Where and any time with you',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.grey, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'E-mail address',
                        labelStyle: Theme.of(context).textTheme.bodyText1,
                        suffixIcon: Icon(Icons.email)
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: Theme.of(context).textTheme.bodyText1,
                        suffixIcon: Icon(Icons.lock_open_rounded)
                    ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: ()
                    {
                      helpNavigateTo(context, VerificationScreen());
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('Forget your password?',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  buttonsMainCategory(
                    function: ()
                    {
                     // helpNavigateTo(context, SignInScreen());
                    },
                    height: 50,
                    color: defaultColor,
                    text: 'Sign In',
                    fontSize: 20,
                    colorText: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Divider(
                      //   height: 20,
                      //   thickness: 5,
                      //   indent: 20,
                      //   endIndent: 20,
                      //   color: Colors.grey,
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('OR',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey),
                        ),
                      ),
                      // Divider(
                      //   height: 20,
                      //   thickness: 5,
                      //   indent: 20,
                      //   endIndent: 20,
                      // ),
                    ],
                  ),
                  GestureDetector(
                    onTap: ()
                    {
                      helpNavigateTo(context, LoginScreen());
                    },
                    child: Text('Login with social account',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(color: defaultColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
