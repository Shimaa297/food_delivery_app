import 'package:flutter/material.dart';
import 'package:food_delivery_app/help/help.dart';
import 'package:food_delivery_app/screens/registeration/sign_in_screen.dart';

import '../home_page.dart';
import 'verification_screen.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _checked = false;
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
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'User Name',
                        labelStyle: Theme.of(context).textTheme.bodyText1,
                        suffixIcon: Icon(Icons.person)
                    ),
                  ),
                  SizedBox(height: 5,),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter your Password',
                        labelStyle: Theme.of(context).textTheme.bodyText1,
                        suffixIcon: Icon(Icons.lock_open_rounded)
                    ),
                  ),
                  SizedBox(height: 5,),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: Theme.of(context).textTheme.bodyText1,
                        suffixIcon: Icon(Icons.phone)
                    ),
                  ),
                  SizedBox(height: 5,),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Address',
                        labelStyle: Theme.of(context).textTheme.bodyText1,
                        suffixIcon: Icon(Icons.location_on)
                    ),
                  ),
                  SizedBox(height: 20,),
                  buttonsMainCategory(
                    function: ()
                    {
                      // helpNavigateTo(context, SignInScreen());
                    },
                    height: 50,
                    color: defaultColor,
                    text: 'Create account',
                    fontSize: 20,
                    colorText: Colors.white,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: _checked,
                          onChanged: (bool value){
                            setState(() {
                              _checked = value;
                            });
                          },
                        activeColor: defaultColor,
                        checkColor: Colors.white,
                         // controlAffinity: ListTileControlAffinity.leading,
                      ),
                      Text('By using this App, you agree to our terms\n ofservices & privacy policy.', maxLines: 2,),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already registered?',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey),
                      ),
                      SizedBox(width: 10,),
                      TextButton(
                        onPressed: ()
                        {
                          helpNavigateTo(context, SignInScreen());
                        },
                        child: Text('Sing in',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(color: defaultColor, fontWeight: FontWeight.bold),
            ),)
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
