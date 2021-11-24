import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/help/help.dart';
import 'package:food_delivery_app/screens/registeration/welcom_screen.dart';

import 'home_page.dart';
// import 'package:mvc_pattern/mvc_pattern.dart';
//
// import '../controllers/splash_screen_controller.dart';
// import '../repository/user_repository.dart' as userRepo;

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(Duration(seconds: 2), () => helpNavigateTo(context, WelcomeScreen()));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset(
            'assets/logo1.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 30,
            bottom: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Goin',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: defaultColor, fontWeight: FontWeight.bold, fontSize: 70, height: 1.2),
                ),
                Text(
                  'Delivery',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50, height: 1.2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
